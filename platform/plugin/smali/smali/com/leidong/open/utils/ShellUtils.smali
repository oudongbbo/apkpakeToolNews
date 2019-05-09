.class public final Lcom/leidong/open/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leidong/open/utils/ShellUtils$CommandResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static execCmd(Ljava/lang/String;Z)Lcom/leidong/open/utils/ShellUtils$CommandResult;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .line 30
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1, p1, v0}, Lcom/leidong/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/leidong/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/leidong/open/utils/ShellUtils$CommandResult;
    .locals 2
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/leidong/open/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 41
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/leidong/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;
    .locals 1
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/leidong/open/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    .line 76
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/leidong/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/leidong/open/utils/ShellUtils$CommandResult;
    .locals 1
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .line 52
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/leidong/open/utils/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/leidong/open/utils/ShellUtils$CommandResult;
    .locals 18
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    move-object/from16 v1, p0

    .line 88
    const/4 v2, -0x1

    .line 89
    .local v2, "result":I
    const/4 v3, 0x0

    if-eqz v1, :cond_b

    array-length v4, v1

    if-nez v4, :cond_0

    goto/16 :goto_9

    .line 92
    :cond_0
    const/4 v4, 0x0

    .line 93
    .local v4, "process":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 94
    .local v5, "successResult":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 95
    .local v6, "errorResult":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 96
    .local v7, "successMsg":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 97
    .local v8, "errorMsg":Ljava/lang/StringBuilder;
    move-object v9, v3

    .line 99
    .local v9, "os":Ljava/io/DataOutputStream;
    const/4 v11, 0x3

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    if-eqz p1, :cond_1

    const-string v15, "su"

    goto :goto_0

    :cond_1
    const-string v15, "sh"

    :goto_0
    move-object v3, v15

    invoke-virtual {v14, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v4, v3

    .line 100
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v3

    .line 101
    array-length v3, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v3, :cond_3

    aget-object v15, v1, v14

    move-object/from16 v16, v15

    .line 102
    .local v16, "command":Ljava/lang/String;
    move-object/from16 v10, v16

    if-nez v10, :cond_2

    .line 102
    .end local v16    # "command":Ljava/lang/String;
    goto :goto_2

    .line 103
    .local v10, "command":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/io/DataOutputStream;->write([B)V

    .line 104
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 101
    .end local v10    # "command":Ljava/lang/String;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 107
    :cond_3
    const-string v3, "exit\n"

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    move-result v3

    move v2, v3

    .line 110
    if-eqz p2, :cond_5

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v10

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v10

    .line 113
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v13, "UTF-8"

    invoke-direct {v12, v14, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v10

    .line 114
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v10

    .line 116
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    .line 116
    .local v12, "s":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 117
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 119
    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v12, v10

    if-eqz v10, :cond_5

    .line 120
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 126
    .end local v12    # "s":Ljava/lang/String;
    :cond_5
    new-array v10, v11, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-static {v10}, Lcom/leidong/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 127
    if-eqz v4, :cond_7

    .line 128
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    goto :goto_5

    .line 126
    :catchall_0
    move-exception v0

    move v10, v2

    move-object v2, v0

    goto :goto_8

    .line 123
    :catch_0
    move-exception v0

    move-object v10, v8

    move-object v8, v7

    move v7, v2

    move-object v2, v0

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    .local v7, "result":I
    .local v8, "successMsg":Ljava/lang/StringBuilder;
    .local v10, "errorMsg":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    new-array v2, v11, [Ljava/io/Closeable;

    const/4 v11, 0x0

    aput-object v9, v2, v11

    const/4 v11, 0x1

    aput-object v5, v2, v11

    const/4 v11, 0x2

    aput-object v6, v2, v11

    invoke-static {v2}, Lcom/leidong/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 127
    if-eqz v4, :cond_6

    .line 128
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 131
    :cond_6
    move v2, v7

    move-object v7, v8

    move-object v8, v10

    .line 131
    .end local v10    # "errorMsg":Ljava/lang/StringBuilder;
    .local v2, "result":I
    .local v7, "successMsg":Ljava/lang/StringBuilder;
    .local v8, "errorMsg":Ljava/lang/StringBuilder;
    :cond_7
    :goto_5
    new-instance v10, Lcom/leidong/open/utils/ShellUtils$CommandResult;

    if-nez v7, :cond_8

    .line 133
    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_6
    if-nez v8, :cond_9

    .line 134
    const/4 v12, 0x0

    goto :goto_7

    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_7
    invoke-direct {v10, v2, v11, v12}, Lcom/leidong/open/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v10

    .line 126
    .end local v2    # "result":I
    .local v7, "result":I
    .local v8, "successMsg":Ljava/lang/StringBuilder;
    .restart local v10    # "errorMsg":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v17, v10

    move v10, v7

    move-object v7, v8

    move-object/from16 v8, v17

    .line 126
    .local v7, "successMsg":Ljava/lang/StringBuilder;
    .local v8, "errorMsg":Ljava/lang/StringBuilder;
    .local v10, "result":I
    :goto_8
    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    const/4 v12, 0x2

    aput-object v6, v11, v12

    invoke-static {v11}, Lcom/leidong/open/utils/CloseUtils;->closeIO([Ljava/io/Closeable;)V

    .line 127
    if-eqz v4, :cond_a

    .line 128
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_a
    throw v2

    .line 90
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "successResult":Ljava/io/BufferedReader;
    .end local v6    # "errorResult":Ljava/io/BufferedReader;
    .end local v7    # "successMsg":Ljava/lang/StringBuilder;
    .end local v8    # "errorMsg":Ljava/lang/StringBuilder;
    .end local v9    # "os":Ljava/io/DataOutputStream;
    .end local v10    # "result":I
    .restart local v2    # "result":I
    :cond_b
    :goto_9
    new-instance v4, Lcom/leidong/open/utils/ShellUtils$CommandResult;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5}, Lcom/leidong/open/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method
