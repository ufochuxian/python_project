.class Lcom/pingplusplus/android/h$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/pingplusplus/android/h$a;",
        "Ljava/lang/Void;",
        "Lcom/pingplusplus/android/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/h;


# direct methods
.method private constructor <init>(Lcom/pingplusplus/android/h;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/pingplusplus/android/h$b;->a:Lcom/pingplusplus/android/h;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pingplusplus/android/h;Lcom/pingplusplus/android/i;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/pingplusplus/android/h$b;-><init>(Lcom/pingplusplus/android/h;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/pingplusplus/android/h$a;)Lcom/pingplusplus/android/g;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 259
    invoke-static {v0}, Lcom/pingplusplus/android/h;->a(Lcom/pingplusplus/android/h$a;)Lcom/pingplusplus/android/g;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/pingplusplus/android/g;)V
    .locals 2

    .prologue
    .line 264
    if-eqz p1, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/pingplusplus/android/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 266
    iget-object v0, p1, Lcom/pingplusplus/android/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->a(Ljava/lang/String;)V

    .line 267
    iget-object v0, p1, Lcom/pingplusplus/android/g;->d:Lcom/pingplusplus/android/d;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p1, Lcom/pingplusplus/android/g;->d:Lcom/pingplusplus/android/d;

    invoke-interface {v0, p1}, Lcom/pingplusplus/android/d;->a(Lcom/pingplusplus/android/g;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-string v0, "response is null"

    invoke-static {v0}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 254
    check-cast p1, [Lcom/pingplusplus/android/h$a;

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/h$b;->a([Lcom/pingplusplus/android/h$a;)Lcom/pingplusplus/android/g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 254
    check-cast p1, Lcom/pingplusplus/android/g;

    invoke-virtual {p0, p1}, Lcom/pingplusplus/android/h$b;->a(Lcom/pingplusplus/android/g;)V

    return-void
.end method
