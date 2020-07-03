#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>

struct checkGenerators {
    uint64_t **generatorsTable; // таблицы с со сгенерированными посл-ми
    uint64_t *checker; //таблица для проверки
    uint64_t *numGenerators; // таблица с числами генераторами
    uint64_t countTable; // количество правильных посл-тей
    uint64_t p; // число элементов поля
};

struct allGenerators {
    struct checkGenerators *BigTable; // таблица для хранения всех checkGenerators
};

void swap(uint64_t *xp, uint64_t *yp) {
    uint64_t temp = *xp;
    *xp = *yp;
    *yp = temp;
}

void bubbleSort(uint64_t arr[], uint64_t n) { // сортировка бабл
    uint64_t i, j;
    for (i = 0; i < n - 1; i++)
        for (j = 0; j < n - i - 1; j++)
            if (arr[j] > arr[j + 1])
                swap(&arr[j], &arr[j + 1]);
}

void fillChecker(uint64_t p, uint64_t *checker) { //заполнение таблицы для проверки
    uint64_t i;
    for (i = 0; i < p - 1; ++i) {
        checker[i] = i + 1;
    }
}

uint64_t checkArrays(uint64_t p, const uint64_t *checking,
                     const uint64_t *checkers) { //проверка массива со сгенерированной посл-ю и эталонного массива
    if (checking[p - 1] != 1) return -1;
    uint64_t i;
    for (i = 0; i < p - 1; ++i) {
        if (checking[i] != checkers[i]) return -1;
    }
    return 0;
}

struct checkGenerators getGenerators(uint64_t p) { //получение последовательностей
    uint64_t i = 0;
    uint64_t j = 0;

    struct checkGenerators tmpStruct;
    tmpStruct.countTable = 0;
    tmpStruct.p = p;
    tmpStruct.generatorsTable = NULL;
    tmpStruct.numGenerators = NULL;
    tmpStruct.checker = malloc((p - 1) * sizeof(uint64_t));
    fillChecker(p, tmpStruct.checker);
    for (i = 0; i < p; ++i) {
        uint64_t tmp[p];
        memset(tmp, 0, p);
        for (j = 0; j < p; ++j) {
            if (j == 0)
                tmp[j] = (uint64_t) powl(i, j) % p;
            if (j > 0)
                tmp[j] = tmp[j - 1] * i % p;
        }

        bubbleSort(tmp, p - 1);
//        for (j = 0; j < p; ++j) {
//            printf("%llu ", tmp[j]);
//        }
//        printf("\n");
        if (checkArrays(p, tmp, tmpStruct.checker) == 0) {
            tmpStruct.numGenerators = (uint64_t *) realloc(tmpStruct.numGenerators,
                                                           (tmpStruct.countTable + 1) * sizeof(uint64_t));
            tmpStruct.numGenerators[tmpStruct.countTable] = i;
            tmpStruct.generatorsTable = realloc(tmpStruct.generatorsTable,
                                                (tmpStruct.countTable + 1) * sizeof(uint64_t *));
            tmpStruct.generatorsTable[tmpStruct.countTable] = malloc(p * sizeof(uint64_t));
            //memset(a.generatorsTable, 0, (z + 1) * p * sizeof(int));
            memcpy(tmpStruct.generatorsTable[tmpStruct.countTable], tmp, p * sizeof(uint64_t));
            ++tmpStruct.countTable;
        }
    }
    return tmpStruct;
}

int main() {
    uint64_t i = 0;
    uint64_t j = 0;
    uint64_t z = 0;
    struct allGenerators generators;
    generators.BigTable = malloc(255 * sizeof(struct checkGenerators));
    memset(generators.BigTable, 0, 255 * sizeof(struct checkGenerators));
    for (i = 2; i < 255; ++i) {
        // generators.BigTable = realloc(generators.BigTable, (i - 1) * sizeof(struct checkGenerators));
        generators.BigTable[i] = getGenerators(i);
    }

    for (z = 2; z < 255; ++z) {
        for (i = 0; i < generators.BigTable[z].countTable; ++i) {
            printf("[%llu] = ", generators.BigTable[z].p);
            printf("{%llu} ", generators.BigTable[z].numGenerators[i]);
            for (j = 0; j < generators.BigTable[z].p; ++j) {
                printf("%llu ", generators.BigTable[z].generatorsTable[i][j]);
            }
            printf("\n");
        }
    }

    for (z = 2; z < 255; ++z) {
        if (generators.BigTable[z].countTable != 0) {
            memset(generators.BigTable[z].numGenerators, 0, generators.BigTable[z].countTable);
            free(generators.BigTable[z].numGenerators);
            for (i = 0; i < generators.BigTable[z].countTable; ++i) {
                memset(generators.BigTable[z].generatorsTable[i], 0, generators.BigTable[z].p);
                free(generators.BigTable[z].generatorsTable[i]);
            }
            memset(generators.BigTable[z].generatorsTable, 0, generators.BigTable[z].countTable);
            free(generators.BigTable[z].generatorsTable);
        }
    }

    memset(generators.BigTable, 0, 255 * sizeof(struct checkGenerators));
    free(generators.BigTable);
    return 0;
}
