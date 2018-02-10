.class Lrx/d/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d/a;->a(Lrx/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/p",
        "<",
        "Lrx/e",
        "<TT;>;",
        "Lrx/e",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d/a;


# direct methods
.method constructor <init>(Lrx/d/a;)V
    .locals 0

    .prologue
    .line 348
    .local p0, "this":Lrx/d/a$7;, "Lrx/d/a.7;"
    iput-object p1, p0, Lrx/d/a$7;->a:Lrx/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/e;)Lrx/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lrx/d/a$7;, "Lrx/d/a.7;"
    .local p1, "v":Lrx/e;, "Lrx/e<TT;>;"
    invoke-virtual {p1}, Lrx/e;->r()Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 348
    .local p0, "this":Lrx/d/a$7;, "Lrx/d/a.7;"
    check-cast p1, Lrx/e;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/d/a$7;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
