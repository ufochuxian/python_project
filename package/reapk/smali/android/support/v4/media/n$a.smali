.class public Landroid/support/v4/media/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 69
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 70
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 65
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ratingObj"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    check-cast p2, Landroid/media/Rating;

    .end local p2    # "ratingObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    .line 74
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    check-cast p0, Landroid/media/MediaMetadata$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 82
    return-void
.end method