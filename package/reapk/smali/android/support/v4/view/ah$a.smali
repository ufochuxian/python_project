.class Landroid/support/v4/view/ah$a;
.super Landroid/support/v4/view/ah$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/support/v4/view/ah$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 142
    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I

    .prologue
    .line 152
    invoke-static {p1, p2}, Landroid/support/v4/view/ai;->a(Landroid/content/res/Resources;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "hotSpotX"    # F
    .param p3, "hotSpotY"    # F

    .prologue
    .line 147
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ai;->a(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method