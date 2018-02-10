.class public Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/xbill/DNS/t;)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "lookup"    # Lorg/xbill/DNS/t;

    .prologue
    .line 11
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lorg/xbill/DNS/t;->g()I

    move-result v3

    .line 13
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 14
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/xbill/DNS/t;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 15
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 16
    invoke-virtual {p1}, Lorg/xbill/DNS/t;->f()[Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 17
    .local v0, "aliases":[Lorg/xbill/DNS/Name;
    array-length v4, v0

    if-lez v4, :cond_3

    .line 18
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "# aliases: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 20
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 21
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 22
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 19
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 26
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/t;->g()I

    move-result v4

    if-nez v4, :cond_4

    .line 27
    invoke-virtual {p1}, Lorg/xbill/DNS/t;->e()[Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 28
    .local v1, "answers":[Lorg/xbill/DNS/Record;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 29
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 31
    .end local v1    # "answers":[Lorg/xbill/DNS/Record;
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v3, 0x1

    .line 36
    .local v3, "type":I
    const/4 v2, 0x0

    .line 37
    .local v2, "start":I
    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    const/4 v4, 0x0

    aget-object v4, p0, v4

    const-string v5, "-t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Lorg/xbill/DNS/au;->a(Ljava/lang/String;)I

    move-result v3

    .line 39
    if-gez v3, :cond_0

    .line 40
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 41
    :cond_0
    const/4 v2, 0x2

    .line 43
    :cond_1
    move v0, v2

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 44
    new-instance v1, Lorg/xbill/DNS/t;

    aget-object v4, p0, v0

    invoke-direct {v1, v4, v3}, Lorg/xbill/DNS/t;-><init>(Ljava/lang/String;I)V

    .line 45
    .local v1, "l":Lorg/xbill/DNS/t;
    invoke-virtual {v1}, Lorg/xbill/DNS/t;->d()[Lorg/xbill/DNS/Record;

    .line 46
    aget-object v4, p0, v0

    invoke-static {v4, v1}, Lf;->a(Ljava/lang/String;Lorg/xbill/DNS/t;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v1    # "l":Lorg/xbill/DNS/t;
    :cond_2
    return-void
.end method
