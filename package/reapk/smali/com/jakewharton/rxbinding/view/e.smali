.class public final Lcom/jakewharton/rxbinding/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a(Landroid/view/View;I)Lrx/c/c;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "visibilityWhenFalse"    # I
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Setting visibility to VISIBLE when false would have no effect."

    invoke-static {v0, v3}, Lcom/jakewharton/rxbinding/a/b;->a(ZLjava/lang/String;)V

    .line 474
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    const-string v0, "Must set visibility to INVISIBLE or GONE when false."

    invoke-static {v2, v0}, Lcom/jakewharton/rxbinding/a/b;->a(ZLjava/lang/String;)V

    .line 476
    new-instance v0, Lcom/jakewharton/rxbinding/view/e$6;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/e$6;-><init>(Landroid/view/View;I)V

    return-object v0

    :cond_2
    move v0, v2

    .line 472
    goto :goto_0
.end method

.method public static a(Landroid/view/View;)Lrx/e;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/jakewharton/rxbinding/view/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/h;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Lrx/c/o;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/o;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "handled":Lrx/c/o;, "Lrx/c/o<Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 269
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    new-instance v0, Lcom/jakewharton/rxbinding/view/u;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/u;-><init>(Landroid/view/View;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/view/View;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/DragEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/DragEvent;Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/jakewharton/rxbinding/view/j;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/j;-><init>(Landroid/view/View;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/view/ViewAttachEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/jakewharton/rxbinding/view/g;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/g;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Lrx/c/o;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/o;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "proceedDrawingPass":Lrx/c/o;, "Lrx/c/o<Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    const-string v0, "proceedDrawingPass == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    new-instance v0, Lcom/jakewharton/rxbinding/view/ab;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ab;-><init>(Landroid/view/View;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/view/View;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/MotionEvent;Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 209
    new-instance v0, Lcom/jakewharton/rxbinding/view/q;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/q;-><init>(Landroid/view/View;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/view/View;)Lrx/e;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/jakewharton/rxbinding/view/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/h;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/view/View;Lrx/c/p;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1    # Lrx/c/p;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lrx/c/p",
            "<-",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/e",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "handled":Lrx/c/p;, "Lrx/c/p<-Landroid/view/MotionEvent;Ljava/lang/Boolean;>;"
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string v0, "handled == null"

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    new-instance v0, Lcom/jakewharton/rxbinding/view/y;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/y;-><init>(Landroid/view/View;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/jakewharton/rxbinding/view/i;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/i;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/view/View;)Lrx/e;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/jakewharton/rxbinding/view/j;

    sget-object v1, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/j;-><init>(Landroid/view/View;Lrx/c/p;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lcom/jakewharton/rxbinding/view/z;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/z;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lcom/jakewharton/rxbinding/view/l;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/l;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    new-instance v0, Lcom/jakewharton/rxbinding/view/aa;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/aa;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static i(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/view/e;->b(Landroid/view/View;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    new-instance v0, Lcom/jakewharton/rxbinding/view/t;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/t;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/view/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    new-instance v0, Lcom/jakewharton/rxbinding/view/s;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/s;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/view/View;)Lrx/e;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    new-instance v0, Lcom/jakewharton/rxbinding/view/u;

    sget-object v1, Lcom/jakewharton/rxbinding/a/a;->a:Lrx/c/o;

    invoke-direct {v0, p0, v1}, Lcom/jakewharton/rxbinding/view/u;-><init>(Landroid/view/View;Lrx/c/o;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Lcom/jakewharton/rxbinding/view/v;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    new-instance v0, Lcom/jakewharton/rxbinding/view/w;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/w;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static n(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    new-instance v0, Lcom/jakewharton/rxbinding/view/x;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/x;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lrx/e;->a(Lrx/e$a;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/view/View;)Lrx/e;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/e",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/jakewharton/rxbinding/a/a;->b:Lrx/c/p;

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/view/e;->c(Landroid/view/View;Lrx/c/p;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/view/View;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 375
    new-instance v0, Lcom/jakewharton/rxbinding/view/e$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/e$1;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static q(Landroid/view/View;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    new-instance v0, Lcom/jakewharton/rxbinding/view/e$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/e$2;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static r(Landroid/view/View;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 407
    new-instance v0, Lcom/jakewharton/rxbinding/view/e$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/e$3;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static s(Landroid/view/View;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    new-instance v0, Lcom/jakewharton/rxbinding/view/e$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/e$4;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static t(Landroid/view/View;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    new-instance v0, Lcom/jakewharton/rxbinding/view/e$5;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/e$5;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static u(Landroid/view/View;)Lrx/c/c;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/j;
    .end annotation

    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lrx/c/c",
            "<-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const-string v0, "view == null"

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/view/e;->a(Landroid/view/View;I)Lrx/c/c;

    move-result-object v0

    return-object v0
.end method
