.class final Lrx/f/c$12;
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
        "Lrx/e;",
        "Lrx/e$a;",
        "Lrx/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/e$a;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/f/c$12;->a(Lrx/e;Lrx/e$a;)Lrx/e$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/e;Lrx/e$a;)Lrx/e$a;
    .locals 1
    .param p1, "t1"    # Lrx/e;
    .param p2, "t2"    # Lrx/e$a;

    .prologue
    .line 112
    invoke-static {}, Lrx/f/f;->a()Lrx/f/f;

    move-result-object v0

    invoke-virtual {v0}, Lrx/f/f;->d()Lrx/f/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/f/d;->a(Lrx/e;Lrx/e$a;)Lrx/e$a;

    move-result-object v0

    return-object v0
.end method
