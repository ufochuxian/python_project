.class final Lretrofit2/adapter/rxjava/SingleHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/adapter/rxjava/SingleHelper;->makeSingle(Lretrofit2/CallAdapter;)Lretrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Lrx/i",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callAdapter:Lretrofit2/CallAdapter;


# direct methods
.method constructor <init>(Lretrofit2/CallAdapter;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lretrofit2/adapter/rxjava/SingleHelper$1;->val$callAdapter:Lretrofit2/CallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lretrofit2/adapter/rxjava/SingleHelper$1;->adapt(Lretrofit2/Call;)Lrx/i;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Lrx/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Lrx/i",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    iget-object v1, p0, Lretrofit2/adapter/rxjava/SingleHelper$1;->val$callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v1, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;

    .line 33
    .local v0, "observable":Lrx/e;, "Lrx/e<*>;"
    invoke-virtual {v0}, Lrx/e;->a()Lrx/i;

    move-result-object v1

    return-object v1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lretrofit2/adapter/rxjava/SingleHelper$1;->val$callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {v0}, Lretrofit2/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
