.class public final Lrx/c/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lrx/c/b;)Lrx/c/y;
    .locals 1
    .param p0, "f"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/c/y",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lrx/c/aa$3;

    invoke-direct {v0, p0}, Lrx/c/aa$3;-><init>(Lrx/c/b;)V

    return-object v0
.end method

.method public static a(Lrx/c/c;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<-TT0;>;)",
            "Lrx/c/y",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "f":Lrx/c/c;, "Lrx/c/c<-TT0;>;"
    new-instance v0, Lrx/c/aa$4;

    invoke-direct {v0, p0}, Lrx/c/aa$4;-><init>(Lrx/c/c;)V

    return-object v0
.end method

.method public static a(Lrx/c/d;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/d",
            "<-TT0;-TT1;>;)",
            "Lrx/c/y",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "f":Lrx/c/d;, "Lrx/c/d<-TT0;-TT1;>;"
    new-instance v0, Lrx/c/aa$5;

    invoke-direct {v0, p0}, Lrx/c/aa$5;-><init>(Lrx/c/d;)V

    return-object v0
.end method

.method public static a(Lrx/c/e;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/e",
            "<-TT0;-TT1;-TT2;>;)",
            "Lrx/c/y",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "f":Lrx/c/e;, "Lrx/c/e<-TT0;-TT1;-TT2;>;"
    new-instance v0, Lrx/c/aa$6;

    invoke-direct {v0, p0}, Lrx/c/aa$6;-><init>(Lrx/c/e;)V

    return-object v0
.end method

.method public static a(Lrx/c/o;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/o",
            "<+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "f":Lrx/c/o;, "Lrx/c/o<+TR;>;"
    new-instance v0, Lrx/c/aa$1;

    invoke-direct {v0, p0}, Lrx/c/aa$1;-><init>(Lrx/c/o;)V

    return-object v0
.end method

.method public static a(Lrx/c/p;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/p",
            "<-TT0;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "f":Lrx/c/p;, "Lrx/c/p<-TT0;+TR;>;"
    new-instance v0, Lrx/c/aa$7;

    invoke-direct {v0, p0}, Lrx/c/aa$7;-><init>(Lrx/c/p;)V

    return-object v0
.end method

.method public static a(Lrx/c/q;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/q",
            "<-TT0;-TT1;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "f":Lrx/c/q;, "Lrx/c/q<-TT0;-TT1;+TR;>;"
    new-instance v0, Lrx/c/aa$8;

    invoke-direct {v0, p0}, Lrx/c/aa$8;-><init>(Lrx/c/q;)V

    return-object v0
.end method

.method public static a(Lrx/c/r;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/r",
            "<-TT0;-TT1;-TT2;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "f":Lrx/c/r;, "Lrx/c/r<-TT0;-TT1;-TT2;+TR;>;"
    new-instance v0, Lrx/c/aa$9;

    invoke-direct {v0, p0}, Lrx/c/aa$9;-><init>(Lrx/c/r;)V

    return-object v0
.end method

.method public static a(Lrx/c/s;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/s",
            "<-TT0;-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "f":Lrx/c/s;, "Lrx/c/s<-TT0;-TT1;-TT2;-TT3;+TR;>;"
    new-instance v0, Lrx/c/aa$10;

    invoke-direct {v0, p0}, Lrx/c/aa$10;-><init>(Lrx/c/s;)V

    return-object v0
.end method

.method public static a(Lrx/c/t;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/t",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "f":Lrx/c/t;, "Lrx/c/t<-TT0;-TT1;-TT2;-TT3;-TT4;+TR;>;"
    new-instance v0, Lrx/c/aa$11;

    invoke-direct {v0, p0}, Lrx/c/aa$11;-><init>(Lrx/c/t;)V

    return-object v0
.end method

.method public static a(Lrx/c/u;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/u",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "f":Lrx/c/u;, "Lrx/c/u<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    new-instance v0, Lrx/c/aa$12;

    invoke-direct {v0, p0}, Lrx/c/aa$12;-><init>(Lrx/c/u;)V

    return-object v0
.end method

.method public static a(Lrx/c/v;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/v",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "f":Lrx/c/v;, "Lrx/c/v<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    new-instance v0, Lrx/c/aa$13;

    invoke-direct {v0, p0}, Lrx/c/aa$13;-><init>(Lrx/c/v;)V

    return-object v0
.end method

.method public static a(Lrx/c/w;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/w",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "f":Lrx/c/w;, "Lrx/c/w<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    new-instance v0, Lrx/c/aa$14;

    invoke-direct {v0, p0}, Lrx/c/aa$14;-><init>(Lrx/c/w;)V

    return-object v0
.end method

.method public static a(Lrx/c/x;)Lrx/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T0:",
            "Ljava/lang/Object;",
            "T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/x",
            "<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "f":Lrx/c/x;, "Lrx/c/x<-TT0;-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    new-instance v0, Lrx/c/aa$2;

    invoke-direct {v0, p0}, Lrx/c/aa$2;-><init>(Lrx/c/x;)V

    return-object v0
.end method
