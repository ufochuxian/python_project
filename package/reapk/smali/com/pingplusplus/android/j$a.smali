.class public final Lcom/pingplusplus/android/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/j;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/j;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showSource(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 279
    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    iput-boolean v2, v0, Lcom/pingplusplus/android/j;->i:Z

    .line 281
    iget-object v0, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 284
    :cond_0
    const-string v0, "\u60a8\u5df2\u8d2d\u4e70\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u672c\u6b21\u6d88\u8d39\u5df2\u8ba1\u5165\u60a8\u7684\u8d26\u5355"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    iput-boolean v2, v0, Lcom/pingplusplus/android/j;->i:Z

    .line 286
    iget-object v0, p0, Lcom/pingplusplus/android/j$a;->a:Lcom/pingplusplus/android/j;

    iget-object v0, v0, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->b:Ljava/lang/String;

    .line 288
    :cond_2
    return-void
.end method
