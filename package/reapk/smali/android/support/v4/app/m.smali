.class Landroid/support/v4/app/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x15
.end annotation


# instance fields
.field private final a:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/app/ActivityOptions;

    .line 80
    return-void
.end method

.method public static a()Landroid/support/v4/app/m;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Landroid/support/v4/app/m;

    .line 75
    invoke-static {}, Landroid/app/ActivityOptions;->makeTaskLaunchBehind()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/m;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/m;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "sharedElementName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Landroid/support/v4/app/m;

    .line 56
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/m;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static a(Landroid/app/Activity;[Landroid/view/View;[Ljava/lang/String;)Landroid/support/v4/app/m;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "sharedElements"    # [Landroid/view/View;
    .param p2, "sharedElementNames"    # [Ljava/lang/String;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "pairs":[Landroid/util/Pair;
    if-eqz p1, :cond_0

    .line 64
    array-length v2, p1

    new-array v1, v2, [Landroid/util/Pair;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 66
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/support/v4/app/m;

    .line 70
    invoke-static {p0, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/m;-><init>(Landroid/app/ActivityOptions;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;II)Landroid/support/v4/app/m;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enterResId"    # I
    .param p2, "exitResId"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/support/v4/app/m;

    .line 38
    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/m;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;IIII)Landroid/support/v4/app/m;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    .line 43
    new-instance v0, Landroid/support/v4/app/m;

    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/m;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/support/v4/app/m;
    .locals 2
    .param p0, "source"    # Landroid/view/View;
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I

    .prologue
    .line 49
    new-instance v0, Landroid/support/v4/app/m;

    .line 50
    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityOptions;->makeThumbnailScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/m;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/m;)V
    .locals 2
    .param p1, "otherOptions"    # Landroid/support/v4/app/m;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/app/ActivityOptions;

    iget-object v1, p1, Landroid/support/v4/app/m;->a:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 88
    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
