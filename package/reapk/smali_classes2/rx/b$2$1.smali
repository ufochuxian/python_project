.class Lrx/b$2$1;
.super Lrx/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$2;->a(Lrx/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/l",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/b$2;


# direct methods
.method constructor <init>(Lrx/b$2;Lrx/d;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lrx/b$2$1;->b:Lrx/b$2;

    iput-object p2, p0, Lrx/b$2$1;->a:Lrx/d;

    invoke-direct {p0}, Lrx/l;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lrx/b$2$1;->a:Lrx/d;

    invoke-interface {v0}, Lrx/d;->onCompleted()V

    .line 578
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 582
    iget-object v0, p0, Lrx/b$2$1;->a:Lrx/d;

    invoke-interface {v0, p1}, Lrx/d;->onError(Ljava/lang/Throwable;)V

    .line 583
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 588
    return-void
.end method
