.class final Lrx/f/c$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/f/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/q",
        "<",
        "Lrx/b;",
        "Lrx/b$a;",
        "Lrx/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Lrx/b;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/b$a;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/f/c$16;->a(Lrx/b;Lrx/b$a;)Lrx/b$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/b;Lrx/b$a;)Lrx/b$a;
    .locals 1
    .param p1, "t1"    # Lrx/b;
    .param p2, "t2"    # Lrx/b$a;

    .prologue
    .line 148
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/f/f;->f()Lrx/f/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/f/a;->a(Lrx/b;Lrx/b$a;)Lrx/b$a;

    move-result-object v0

    return-object v0
.end method
