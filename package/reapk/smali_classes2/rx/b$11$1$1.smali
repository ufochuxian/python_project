.class Lrx/b$11$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/b$11$1;->onSubscribe(Lrx/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/m;

.field final synthetic b:Lrx/b$11$1;


# direct methods
.method constructor <init>(Lrx/b$11$1;Lrx/m;)V
    .locals 0

    .prologue
    .line 1417
    iput-object p1, p0, Lrx/b$11$1$1;->b:Lrx/b$11$1;

    iput-object p2, p0, Lrx/b$11$1$1;->a:Lrx/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1421
    :try_start_0
    iget-object v1, p0, Lrx/b$11$1$1;->b:Lrx/b$11$1;

    iget-object v1, v1, Lrx/b$11$1;->b:Lrx/b$11;

    iget-object v1, v1, Lrx/b$11;->e:Lrx/c/b;

    invoke-interface {v1}, Lrx/c/b;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_0
    iget-object v1, p0, Lrx/b$11$1$1;->a:Lrx/m;

    invoke-interface {v1}, Lrx/m;->unsubscribe()V

    .line 1426
    return-void

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/f/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
