.class Lrx/internal/schedulers/k$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/schedulers/k$1;->a(Lrx/internal/schedulers/k$d;)Lrx/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/schedulers/k$d;

.field final synthetic b:Lrx/internal/schedulers/k$1;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/k$1;Lrx/internal/schedulers/k$d;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lrx/internal/schedulers/k$1$1;->b:Lrx/internal/schedulers/k$1;

    iput-object p2, p0, Lrx/internal/schedulers/k$1$1;->a:Lrx/internal/schedulers/k$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 2
    .param p1, "actionCompletable"    # Lrx/d;

    .prologue
    .line 145
    iget-object v0, p0, Lrx/internal/schedulers/k$1$1;->a:Lrx/internal/schedulers/k$d;

    invoke-interface {p1, v0}, Lrx/d;->onSubscribe(Lrx/m;)V

    .line 146
    iget-object v0, p0, Lrx/internal/schedulers/k$1$1;->a:Lrx/internal/schedulers/k$d;

    iget-object v1, p0, Lrx/internal/schedulers/k$1$1;->b:Lrx/internal/schedulers/k$1;

    iget-object v1, v1, Lrx/internal/schedulers/k$1;->a:Lrx/h$a;

    invoke-static {v0, v1, p1}, Lrx/internal/schedulers/k$d;->a(Lrx/internal/schedulers/k$d;Lrx/h$a;Lrx/d;)V

    .line 147
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 142
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/k$1$1;->a(Lrx/d;)V

    return-void
.end method
