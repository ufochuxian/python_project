.class public final Lrx/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lrx/e/c;->a()Lrx/f;

    move-result-object v0

    invoke-static {v0}, Lrx/e/h;->a(Lrx/f;)Lrx/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/c;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    if-nez p0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    new-instance v0, Lrx/e/h$2;

    invoke-direct {v0, p0}, Lrx/e/h$2;-><init>(Lrx/c/c;)V

    return-object v0
.end method

.method public static a(Lrx/c/c;Lrx/c/c;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    new-instance v0, Lrx/e/h$3;

    invoke-direct {v0, p1, p0}, Lrx/e/h$3;-><init>(Lrx/c/c;Lrx/c/c;)V

    return-object v0
.end method

.method public static a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)Lrx/l;
    .locals 2
    .param p2, "onComplete"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-TT;>;",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/c/b;",
            ")",
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    if-nez p1, :cond_1

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    if-nez p2, :cond_2

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_2
    new-instance v0, Lrx/e/h$4;

    invoke-direct {v0, p2, p1, p0}, Lrx/e/h$4;-><init>(Lrx/c/b;Lrx/c/c;Lrx/c/c;)V

    return-object v0
.end method

.method public static a(Lrx/f;)Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/f",
            "<-TT;>;)",
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "o":Lrx/f;, "Lrx/f<-TT;>;"
    new-instance v0, Lrx/e/h$1;

    invoke-direct {v0, p0}, Lrx/e/h$1;-><init>(Lrx/f;)V

    return-object v0
.end method

.method public static a(Lrx/l;)Lrx/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "subscriber":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/e/h$5;

    invoke-direct {v0, p0, p0}, Lrx/e/h$5;-><init>(Lrx/l;Lrx/l;)V

    return-object v0
.end method
