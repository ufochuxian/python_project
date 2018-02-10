.class public final Lrx/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/m$c;,
        Lrx/c/m$a;,
        Lrx/c/m$b;
    }
.end annotation


# static fields
.field private static final a:Lrx/c/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lrx/c/m$b;

    invoke-direct {v0}, Lrx/c/m$b;-><init>()V

    sput-object v0, Lrx/c/m;->a:Lrx/c/m$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lrx/c/m$b;
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
            ">()",
            "Lrx/c/m$b",
            "<TT0;TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lrx/c/m;->a:Lrx/c/m$b;

    return-object v0
.end method

.method public static a(Lrx/c/b;)Lrx/c/o;
    .locals 1
    .param p0, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/b;",
            ")",
            "Lrx/c/o",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/b;Ljava/lang/Object;)Lrx/c/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/b;Ljava/lang/Object;)Lrx/c/o;
    .locals 1
    .param p0, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/b;",
            "TR;)",
            "Lrx/c/o",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$1;

    invoke-direct {v0, p0, p1}, Lrx/c/m$1;-><init>(Lrx/c/b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/c;)Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<TT1;>;)",
            "Lrx/c/p",
            "<TT1;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "action":Lrx/c/c;, "Lrx/c/c<TT1;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/c;Ljava/lang/Object;)Lrx/c/p;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/c;Ljava/lang/Object;)Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/c",
            "<TT1;>;TR;)",
            "Lrx/c/p",
            "<TT1;TR;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "action":Lrx/c/c;, "Lrx/c/c<TT1;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$4;

    invoke-direct {v0, p0, p1}, Lrx/c/m$4;-><init>(Lrx/c/c;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/d;)Lrx/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/d",
            "<TT1;TT2;>;)",
            "Lrx/c/q",
            "<TT1;TT2;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "action":Lrx/c/d;, "Lrx/c/d<TT1;TT2;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/d;Ljava/lang/Object;)Lrx/c/q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/d;Ljava/lang/Object;)Lrx/c/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/d",
            "<TT1;TT2;>;TR;)",
            "Lrx/c/q",
            "<TT1;TT2;TR;>;"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "action":Lrx/c/d;, "Lrx/c/d<TT1;TT2;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$5;

    invoke-direct {v0, p0, p1}, Lrx/c/m$5;-><init>(Lrx/c/d;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/e;)Lrx/c/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/e",
            "<TT1;TT2;TT3;>;)",
            "Lrx/c/r",
            "<TT1;TT2;TT3;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "action":Lrx/c/e;, "Lrx/c/e<TT1;TT2;TT3;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/e;Ljava/lang/Object;)Lrx/c/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/e;Ljava/lang/Object;)Lrx/c/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/e",
            "<TT1;TT2;TT3;>;TR;)",
            "Lrx/c/r",
            "<TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "action":Lrx/c/e;, "Lrx/c/e<TT1;TT2;TT3;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$6;

    invoke-direct {v0, p0, p1}, Lrx/c/m$6;-><init>(Lrx/c/e;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/f;)Lrx/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/f",
            "<TT1;TT2;TT3;TT4;>;)",
            "Lrx/c/s",
            "<TT1;TT2;TT3;TT4;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "action":Lrx/c/f;, "Lrx/c/f<TT1;TT2;TT3;TT4;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/f;Ljava/lang/Object;)Lrx/c/s;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/f;Ljava/lang/Object;)Lrx/c/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lrx/c/f",
            "<TT1;TT2;TT3;TT4;>;TR;)",
            "Lrx/c/s",
            "<TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "action":Lrx/c/f;, "Lrx/c/f<TT1;TT2;TT3;TT4;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$7;

    invoke-direct {v0, p0, p1}, Lrx/c/m$7;-><init>(Lrx/c/f;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/g;)Lrx/c/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/g",
            "<TT1;TT2;TT3;TT4;TT5;>;)",
            "Lrx/c/t",
            "<TT1;TT2;TT3;TT4;TT5;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "action":Lrx/c/g;, "Lrx/c/g<TT1;TT2;TT3;TT4;TT5;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/g;Ljava/lang/Object;)Lrx/c/t;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/g;Ljava/lang/Object;)Lrx/c/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lrx/c/g",
            "<TT1;TT2;TT3;TT4;TT5;>;TR;)",
            "Lrx/c/t",
            "<TT1;TT2;TT3;TT4;TT5;TR;>;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "action":Lrx/c/g;, "Lrx/c/g<TT1;TT2;TT3;TT4;TT5;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$8;

    invoke-direct {v0, p0, p1}, Lrx/c/m$8;-><init>(Lrx/c/g;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/h;)Lrx/c/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            ">(",
            "Lrx/c/h",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;)",
            "Lrx/c/u",
            "<TT1;TT2;TT3;TT4;TT5;TT6;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "action":Lrx/c/h;, "Lrx/c/h<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/h;Ljava/lang/Object;)Lrx/c/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/h;Ljava/lang/Object;)Lrx/c/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lrx/c/h",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;TR;)",
            "Lrx/c/u",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "action":Lrx/c/h;, "Lrx/c/h<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$9;

    invoke-direct {v0, p0, p1}, Lrx/c/m$9;-><init>(Lrx/c/h;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/i;)Lrx/c/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            ">(",
            "Lrx/c/i",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;)",
            "Lrx/c/v",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "action":Lrx/c/i;, "Lrx/c/i<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/i;Ljava/lang/Object;)Lrx/c/v;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/i;Ljava/lang/Object;)Lrx/c/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lrx/c/i",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;TR;)",
            "Lrx/c/v",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "action":Lrx/c/i;, "Lrx/c/i<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$10;

    invoke-direct {v0, p0, p1}, Lrx/c/m$10;-><init>(Lrx/c/i;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/j;)Lrx/c/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            ">(",
            "Lrx/c/j",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;)",
            "Lrx/c/w",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "action":Lrx/c/j;, "Lrx/c/j<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/j;Ljava/lang/Object;)Lrx/c/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/j;Ljava/lang/Object;)Lrx/c/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "Lrx/c/j",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;TR;)",
            "Lrx/c/w",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "action":Lrx/c/j;, "Lrx/c/j<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$11;

    invoke-direct {v0, p0, p1}, Lrx/c/m$11;-><init>(Lrx/c/j;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/k;)Lrx/c/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/k",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;)",
            "Lrx/c/x",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "action":Lrx/c/k;, "Lrx/c/k<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/k;Ljava/lang/Object;)Lrx/c/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/k;Ljava/lang/Object;)Lrx/c/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
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
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/k",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;TR;)",
            "Lrx/c/x",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "action":Lrx/c/k;, "Lrx/c/k<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$2;

    invoke-direct {v0, p0, p1}, Lrx/c/m$2;-><init>(Lrx/c/k;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lrx/c/l;)Lrx/c/y;
    .locals 1
    .param p0, "action"    # Lrx/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/l;",
            ")",
            "Lrx/c/y",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {p0, v0}, Lrx/c/m;->a(Lrx/c/l;Ljava/lang/Object;)Lrx/c/y;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/c/l;Ljava/lang/Object;)Lrx/c/y;
    .locals 1
    .param p0, "action"    # Lrx/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/l;",
            "TR;)",
            "Lrx/c/y",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "result":Ljava/lang/Object;, "TR;"
    new-instance v0, Lrx/c/m$3;

    invoke-direct {v0, p0, p1}, Lrx/c/m$3;-><init>(Lrx/c/l;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b()Lrx/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/c/c",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    sget-object v0, Lrx/c/m$c;->INSTANCE:Lrx/c/m$c;

    return-object v0
.end method

.method public static b(Lrx/c/b;)Lrx/c/c;
    .locals 1
    .param p0, "action"    # Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/c/b;",
            ")",
            "Lrx/c/c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Lrx/c/m$a;

    invoke-direct {v0, p0}, Lrx/c/m$a;-><init>(Lrx/c/b;)V

    return-object v0
.end method
