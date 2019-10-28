#include <iostream>
#include <vector>
using namespace std;


void dfs(vector<vector<char>>& matrix, vector<vector<int>>& visited, int i, int j, char c, int count){
    int m = matrix.size();
    int n = matrix[0].size();
    if (i < 0 || i >= m || j < 0 || j >= n || visited[i][j] > 0){
        return;
    }
    if (matrix[i][j] != c){
        return;
    }
    visited[i][j] = count;
    dfs(matrix, visited, i+1, j, c, count);
    dfs(matrix, visited, i-1, j, c, count);
    dfs(matrix, visited, i, j+1, c, count);
    dfs(matrix, visited, i, j-1, c, count);
}

int groups(vector<vector<char>>& matrix){
    int m = matrix.size();
    int n = matrix[0].size();
    vector<vector<int>> visited(m, vector<int>(n, -1));
    int count = 1;
    for (int i = 0; i < m; i++){
        for (int j = 0; j < n; j++){
            char c = matrix[i][j];
            if (visited[i][j] < 0){
                dfs(matrix, visited, i, j, c, count);
                count++;
            }
        }
    }
    return count -1;
}


int main() {
    vector<vector<char>> mat = {{'d','a','c'}, {'b','a','c'}, {'b','a','a'}};
    cout << groups(mat) << endl;

    return 0;
}