.class public final Lrx/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lrx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/f",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/e/c$1;

    invoke-direct {v0}, Lrx/e/c$1;-><init>()V

    sput-object v0, Lrx/e/c;->a:Lrx/f;

    return-void
.end method

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

.method public static a()Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lrx/e/c;->a:Lrx/f;

    return-object v0
.end method

.method public static a(Lrx/c/c;)Lrx/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-TT;>;)",
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    if-nez p0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-instance v0, Lrx/e/c$2;

    invoke-direct {v0, p0}, Lrx/e/c$2;-><init>(Lrx/c/c;)V

    return-object v0
.end method

.method public static a(Lrx/c/c;Lrx/c/c;)Lrx/f;
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
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    new-instance v0, Lrx/e/c$3;

    invoke-direct {v0, p1, p0}, Lrx/e/c$3;-><init>(Lrx/c/c;Lrx/c/c;)V

    return-object v0
.end method

.method public static a(Lrx/c/c;Lrx/c/c;Lrx/c/b;)Lrx/f;
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
            "Lrx/f",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "onNext":Lrx/c/c;, "Lrx/c/c<-TT;>;"
    .local p1, "onError":Lrx/c/c;, "Lrx/c/c<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    if-nez p1, :cond_1

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    if-nez p2, :cond_2

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_2
    new-instance v0, Lrx/e/c$4;

    invoke-direct {v0, p2, p1, p0}, Lrx/e/c$4;-><init>(Lrx/c/b;Lrx/c/c;Lrx/c/c;)V

    return-object v0
.end method
