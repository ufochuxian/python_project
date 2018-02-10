.class final Lrx/h/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/b;->a(Ljava/lang/Object;Z)Lrx/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/c",
        "<",
        "Lrx/h/g$b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h/g;


# direct methods
.method constructor <init>(Lrx/h/g;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lrx/h/b$1;->a:Lrx/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/h/g$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/h/g$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "o":Lrx/h/g$b;, "Lrx/h/g$b<TT;>;"
    iget-object v0, p0, Lrx/h/b$1;->a:Lrx/h/g;

    invoke-virtual {v0}, Lrx/h/g;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/h/g$b;->b(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 105
    check-cast p1, Lrx/h/g$b;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/b$1;->a(Lrx/h/g$b;)V

    return-void
.end method
