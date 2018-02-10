.class public final Lcom/makeramen/roundedimageview/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/makeramen/roundedimageview/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final RoundedImageView:[I

.field public static final RoundedImageView_android_scaleType:I = 0x0

.field public static final RoundedImageView_riv_border_color:I = 0x1

.field public static final RoundedImageView_riv_border_width:I = 0x2

.field public static final RoundedImageView_riv_corner_radius:I = 0x3

.field public static final RoundedImageView_riv_corner_radius_bottom_left:I = 0x4

.field public static final RoundedImageView_riv_corner_radius_bottom_right:I = 0x5

.field public static final RoundedImageView_riv_corner_radius_top_left:I = 0x6

.field public static final RoundedImageView_riv_corner_radius_top_right:I = 0x7

.field public static final RoundedImageView_riv_mutate_background:I = 0x8

.field public static final RoundedImageView_riv_oval:I = 0x9

.field public static final RoundedImageView_riv_tile_mode:I = 0xa

.field public static final RoundedImageView_riv_tile_mode_x:I = 0xb

.field public static final RoundedImageView_riv_tile_mode_y:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/makeramen/roundedimageview/c$d;->RoundedImageView:[I

    return-void

    :array_0
    .array-data 4
        0x101011d
        0x7f0401b3
        0x7f0401b4
        0x7f0401b5
        0x7f0401b6
        0x7f0401b7
        0x7f0401b8
        0x7f0401b9
        0x7f0401ba
        0x7f0401bb
        0x7f0401bc
        0x7f0401bd
        0x7f0401be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
