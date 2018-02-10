.class public interface abstract Lcom/youzan/androidsdk/loader/http/interfaces/HttpExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# virtual methods
.method public abstract intercept(Lcom/youzan/androidsdk/loader/http/interfaces/d;)Lcom/youzan/androidsdk/loader/http/interfaces/HttpExecutor;
    .param p1    # Lcom/youzan/androidsdk/loader/http/interfaces/d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract with(Lcom/youzan/androidsdk/loader/http/b;)Lcom/youzan/androidsdk/loader/http/interfaces/b;
    .param p1    # Lcom/youzan/androidsdk/loader/http/b;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MODE",
            "L:Ljava/lang/Object;",
            ">(",
            "Lcom/youzan/androidsdk/loader/http/b",
            "<TMODE",
            "L;",
            ">;)",
            "Lcom/youzan/androidsdk/loader/http/interfaces/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method
