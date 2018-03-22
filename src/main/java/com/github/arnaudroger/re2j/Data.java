package com.github.arnaudroger.re2j;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Data {
    
    public static String[] DATA = {
        "bargoo.exe", 
        "\\SystemRoot\\System32\\bargoo.exe",
        "somefile.exe",
        "C:\\WINDOWS\\system32\\somefile.exe",
        "cmd.exe",
        "\"C:\\WINDOWS\\system32\\cmd.exe\" ",
        "powershell.exe",
        "powershell.exe -Command function Main {\n    $lorem = \\\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur\\\"\n  }\n \nMain\n"
    };

    public static String[] randomizeData() {
        List<String> list = Arrays.asList(DATA);
        Collections.shuffle(list);
        return list.toArray(new String[0]);
    }
}
