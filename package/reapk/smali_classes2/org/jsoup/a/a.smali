.class public Lorg/jsoup/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/a/a$1;,
        Lorg/jsoup/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 26
    array-length v6, p0

    if-ne v6, v4, :cond_0

    :goto_0
    const-string v6, "usage: supply url to fetch"

    invoke-static {v4, v6}, Lorg/jsoup/helper/d;->a(ZLjava/lang/String;)V

    .line 27
    aget-object v3, p0, v5

    .line 30
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Lorg/jsoup/a;->b(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jsoup/Connection;->a()Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 32
    .local v0, "doc":Lorg/jsoup/nodes/Document;
    new-instance v1, Lorg/jsoup/a/a;

    invoke-direct {v1}, Lorg/jsoup/a/a;-><init>()V

    .line 33
    .local v1, "formatter":Lorg/jsoup/a/a;
    invoke-virtual {v1, v0}, Lorg/jsoup/a/a;->a(Lorg/jsoup/nodes/f;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "plainText":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    return-void

    .end local v0    # "doc":Lorg/jsoup/nodes/Document;
    .end local v1    # "formatter":Lorg/jsoup/a/a;
    .end local v2    # "plainText":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 26
    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/f;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Lorg/jsoup/nodes/f;

    .prologue
    .line 43
    new-instance v0, Lorg/jsoup/a/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/jsoup/a/a$a;-><init>(Lorg/jsoup/a/a;Lorg/jsoup/a/a$1;)V

    .line 44
    .local v0, "formatter":Lorg/jsoup/a/a$a;
    new-instance v1, Lorg/jsoup/select/e;

    invoke-direct {v1, v0}, Lorg/jsoup/select/e;-><init>(Lorg/jsoup/select/f;)V

    .line 45
    .local v1, "traversor":Lorg/jsoup/select/e;
    invoke-virtual {v1, p1}, Lorg/jsoup/select/e;->a(Lorg/jsoup/nodes/h;)V

    .line 47
    invoke-virtual {v0}, Lorg/jsoup/a/a$a;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
