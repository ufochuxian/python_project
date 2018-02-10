.class Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;
.super Lcom/jiliguala/niuwa/common/util/xutils/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/util/xutils/a/c",
        "<",
        "Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;
    .param p2, "maxSize"    # I

    .prologue
    .line 74
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;->a:Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b;

    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/common/util/xutils/a/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "key"    # Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    if-nez p2, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 74
    check-cast p1, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$1;->a(Lcom/jiliguala/niuwa/common/util/xutils/bitmap/a/b$b;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
