.class public Lcom/ut/mini/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 8
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/g;->b(Landroid/app/Activity;)V

    .line 9
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1
    .param p0, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 12
    invoke-static {}, Lcom/ut/mini/g;->a()Lcom/ut/mini/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/g;->a(Landroid/app/Activity;)V

    .line 13
    return-void
.end method
