.class public Lcom/alibaba/sdk/android/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/a/h;->b:Z

    invoke-static {p1}, Lcom/alibaba/sdk/android/a/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/alibaba/sdk/android/a/h;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/a/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/a/h;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/a/h;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/a/h;->b:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/a/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/a/h;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/a/h;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/a/h;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
