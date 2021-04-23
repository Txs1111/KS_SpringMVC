package com.T_Lyon.pojo;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private int bookID;
    private String bookName;
    private int bookCounts;
    private int detail;
}
