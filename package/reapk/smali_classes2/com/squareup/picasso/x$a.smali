.class public final Lcom/squareup/picasso/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "loadedFrom"    # Lcom/squareup/picasso/Picasso$LoadedFrom;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/picasso/x$a;-><init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "loadedFrom"    # Lcom/squareup/picasso/Picasso$LoadedFrom;
    .param p3, "exifOrientation"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/squareup/picasso/x$a;->b:Landroid/graphics/Bitmap;

    .line 60
    iput-object p2, p0, Lcom/squareup/picasso/x$a;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 61
    iput p3, p0, Lcom/squareup/picasso/x$a;->c:I

    .line 62
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/squareup/picasso/x$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/squareup/picasso/x$a;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/squareup/picasso/x$a;->c:I

    return v0
.end method
