#include <stdio.h>
#include <stdlib.h>
#define BUFFER_SIZE 4096
int main(int argc, char *argv[]) {
    FILE *source_fp, *dest_fp;
    char buffer[BUFFER_SIZE];
    size_t bytes_read;
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <source-file> <destination-file>\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    source_fp = fopen(argv[1], "rb");
    if (source_fp == NULL) {
        perror("Error opening source file");
        exit(EXIT_FAILURE);
    }
    dest_fp = fopen(argv[2], "rb");
    if (dest_fp == NULL) {
        perror("Error opening destination file");
        fclose(source_fp);
        exit(EXIT_FAILURE);
    }
    dest_fp = fopen(argv[2], "wb");
    while ((bytes_read = fread(buffer, 1, BUFFER_SIZE, source_fp)) > 0) {
        fwrite(buffer, 1, bytes_read, dest_fp);
    }
    if (ferror(source_fp)) {
        perror("Error reading from source file");
    }
    if (ferror(dest_fp)) {
        perror("Error writing to destination file");
    }
    fclose(source_fp);
    fclose(dest_fp);
    printf("File copy successful.\n");
    return 0;
}
