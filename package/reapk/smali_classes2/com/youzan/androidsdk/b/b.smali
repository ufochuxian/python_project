.class public abstract Lcom/youzan/androidsdk/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youzan/androidsdk/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youzan/androidsdk/b/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "showFileChooser"

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Lcom/youzan/androidsdk/b/b$a;

    invoke-direct {v1, p2}, Lcom/youzan/androidsdk/b/b$a;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "meta":Lcom/youzan/androidsdk/b/b$a;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, v1, Lcom/youzan/androidsdk/b/b$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    iget v2, v1, Lcom/youzan/androidsdk/b/b$a;->a:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/youzan/androidsdk/b/b;->a(Landroid/content/Context;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "meta":Lcom/youzan/androidsdk/b/b$a;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v2

    goto :goto_0
.end method
