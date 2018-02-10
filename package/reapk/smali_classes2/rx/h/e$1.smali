.class Lrx/h/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h/e;-><init>(Lrx/h/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/e$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/h/f;


# direct methods
.method constructor <init>(Lrx/h/f;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lrx/h/e$1;, "Lrx/h/e.1;"
    iput-object p1, p0, Lrx/h/e$1;->a:Lrx/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/h/e$1;, "Lrx/h/e.1;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TR;>;"
    iget-object v0, p0, Lrx/h/e$1;->a:Lrx/h/f;

    invoke-virtual {v0, p1}, Lrx/h/f;->a(Lrx/l;)Lrx/m;

    .line 48
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lrx/h/e$1;, "Lrx/h/e.1;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/h/e$1;->a(Lrx/l;)V

    return-void
.end method
