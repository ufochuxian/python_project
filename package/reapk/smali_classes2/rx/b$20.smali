.class Lrx/b$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b;->h()Lrx/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i/c;

.field final synthetic b:Lrx/b;


# direct methods
.method constructor <init>(Lrx/b;Lrx/i/c;)V
    .locals 0

    .prologue
    .line 1895
    iput-object p1, p0, Lrx/b$20;->b:Lrx/b;

    iput-object p2, p0, Lrx/b$20;->a:Lrx/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1898
    iget-object v0, p0, Lrx/b$20;->a:Lrx/i/c;

    invoke-virtual {v0}, Lrx/i/c;->unsubscribe()V

    .line 1899
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1903
    invoke-static {p1}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    .line 1904
    iget-object v0, p0, Lrx/b$20;->a:Lrx/i/c;

    invoke-virtual {v0}, Lrx/i/c;->unsubscribe()V

    .line 1905
    invoke-static {p1}, Lrx/b;->c(Ljava/lang/Throwable;)V

    .line 1906
    return-void
.end method

.method public onSubscribe(Lrx/m;)V
    .locals 1
    .param p1, "d"    # Lrx/m;

    .prologue
    .line 1910
    iget-object v0, p0, Lrx/b$20;->a:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Lrx/m;)V

    .line 1911
    return-void
.end method
