.class public Lcom/youzan/androidsdk/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "config.image_loader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "config.image_loader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youzan/androidsdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/youzan/androidsdk/e/c;->a(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/youzan/androidsdk/e/a;->a(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {}, Lcom/youzan/androidsdk/e/c;->a()Lcom/youzan/androidsdk/e/c;

    move-result-object v0

    const-string v1, "config.image_loader"

    invoke-virtual {v0, v1, p0}, Lcom/youzan/androidsdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
