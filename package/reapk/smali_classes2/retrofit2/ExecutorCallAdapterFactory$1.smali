.class Lretrofit2/ExecutorCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ExecutorCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Lretrofit2/Call",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/ExecutorCallAdapterFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lretrofit2/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit2/ExecutorCallAdapterFactory;

    .prologue
    .line 37
    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lretrofit2/ExecutorCallAdapterFactory$1;->adapt(Lretrofit2/Call;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call",
            "<TR;>;)",
            "Lretrofit2/Call",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TR;>;"
    new-instance v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory;

    iget-object v1, v1, Lretrofit2/ExecutorCallAdapterFactory;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit2/Call;)V

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
