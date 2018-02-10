.class public final Landroid/support/v4/media/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/m$b;,
        Landroid/support/v4/media/m$d;,
        Landroid/support/v4/media/m$a;,
        Landroid/support/v4/media/m$c;,
        Landroid/support/v4/media/m$e;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final B:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final C:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/lang/String; = "android.media.metadata.ADVERTISEMENT"

.field static final E:I = 0x0

.field static final F:I = 0x1

.field static final G:I = 0x2

.field static final H:I = 0x3

.field static final I:Landroid/support/v4/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final K:Ljava/lang/String; = "MediaMetadata"

.field private static final L:[Ljava/lang/String;

.field private static final M:[Ljava/lang/String;

.field private static final N:[Ljava/lang/String;

.field public static final a:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final b:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final c:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final d:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final e:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final f:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final g:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final h:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final i:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final j:Ljava/lang/String; = "android.media.metadata.YEAR"

.field public static final k:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final l:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final m:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final n:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final o:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final p:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final q:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final r:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final s:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final t:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final u:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final v:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final w:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final x:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final y:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final z:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"


# instance fields
.field final J:Landroid/os/Bundle;

.field private O:Ljava/lang/Object;

.field private P:Landroid/support/v4/media/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 293
    new-instance v0, Landroid/support/v4/k/a;

    invoke-direct {v0}, Landroid/support/v4/k/a;-><init>()V

    sput-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    .line 294
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DURATION"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.WRITER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.COMPOSER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DATE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.YEAR"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.NUM_TRACKS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DISC_NUMBER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.USER_RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.RATING"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Landroid/support/v4/media/m;->I:Landroid/support/v4/k/a;

    const-string v1, "android.media.metadata.ADVERTISEMENT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/k/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.media.metadata.TITLE"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM"

    aput-object v1, v0, v5

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "android.media.metadata.WRITER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.media.metadata.AUTHOR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.media.metadata.COMPOSER"

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/media/m;->L:[Ljava/lang/String;

    .line 336
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ART"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM_ART"

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v4/media/m;->M:[Ljava/lang/String;

    .line 342
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v1, v0, v4

    const-string v1, "android.media.metadata.ART_URI"

    aput-object v1, v0, v3

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    aput-object v1, v0, v5

    sput-object v0, Landroid/support/v4/media/m;->N:[Ljava/lang/String;

    .line 619
    new-instance v0, Landroid/support/v4/media/m$1;

    invoke-direct {v0}, Landroid/support/v4/media/m$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    .line 354
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    .line 358
    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/m;
    .locals 5
    .param p0, "metadataObj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 583
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 584
    :cond_0
    const/4 v0, 0x0

    .line 593
    :goto_0
    return-object v0

    .line 587
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 588
    .local v1, "p":Landroid/os/Parcel;
    invoke-static {p0, v1, v4}, Landroid/support/v4/media/n;->a(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 589
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 590
    sget-object v2, Landroid/support/v4/media/m;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/m;

    .line 591
    .local v0, "metadata":Landroid/support/v4/media/m;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 592
    iput-object p0, v0, Landroid/support/v4/media/m;->O:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/support/v4/media/j;
    .locals 22

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/m;->P:Landroid/support/v4/media/j;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/m;->P:Landroid/support/v4/media/j;

    move-object/from16 v19, v0

    .line 528
    :goto_0
    return-object v19

    .line 461
    :cond_0
    const-string v19, "android.media.metadata.MEDIA_ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 463
    .local v12, "mediaId":Ljava/lang/String;
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 464
    .local v16, "text":[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 465
    .local v8, "icon":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 468
    .local v9, "iconUri":Landroid/net/Uri;
    const-string v19, "android.media.metadata.DISPLAY_TITLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 469
    .local v6, "displayText":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 472
    const/16 v19, 0x0

    aput-object v6, v16, v19

    .line 473
    const/16 v19, 0x1

    const-string v20, "android.media.metadata.DISPLAY_SUBTITLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    .line 474
    const/16 v19, 0x2

    const-string v20, "android.media.metadata.DISPLAY_DESCRIPTION"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    aput-object v20, v16, v19

    .line 489
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    sget-object v19, Landroid/support/v4/media/m;->M:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    .line 490
    sget-object v19, Landroid/support/v4/media/m;->M:[Ljava/lang/String;

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 491
    .local v15, "next":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_8

    .line 492
    move-object v8, v15

    .line 498
    .end local v15    # "next":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v19, Landroid/support/v4/media/m;->N:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    .line 499
    sget-object v19, Landroid/support/v4/media/m;->N:[Ljava/lang/String;

    aget-object v19, v19, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 500
    .local v15, "next":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 501
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 506
    .end local v15    # "next":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    .line 507
    .local v13, "mediaUri":Landroid/net/Uri;
    const-string v19, "android.media.metadata.MEDIA_URI"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 508
    .local v14, "mediaUriStr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 509
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 512
    :cond_4
    new-instance v4, Landroid/support/v4/media/j$a;

    invoke-direct {v4}, Landroid/support/v4/media/j$a;-><init>()V

    .line 513
    .local v4, "bob":Landroid/support/v4/media/j$a;
    invoke-virtual {v4, v12}, Landroid/support/v4/media/j$a;->a(Ljava/lang/String;)Landroid/support/v4/media/j$a;

    .line 514
    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/media/j$a;->a(Ljava/lang/CharSequence;)Landroid/support/v4/media/j$a;

    .line 515
    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/media/j$a;->b(Ljava/lang/CharSequence;)Landroid/support/v4/media/j$a;

    .line 516
    const/16 v19, 0x2

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/media/j$a;->c(Ljava/lang/CharSequence;)Landroid/support/v4/media/j$a;

    .line 517
    invoke-virtual {v4, v8}, Landroid/support/v4/media/j$a;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/media/j$a;

    .line 518
    invoke-virtual {v4, v9}, Landroid/support/v4/media/j$a;->a(Landroid/net/Uri;)Landroid/support/v4/media/j$a;

    .line 519
    invoke-virtual {v4, v13}, Landroid/support/v4/media/j$a;->b(Landroid/net/Uri;)Landroid/support/v4/media/j$a;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 521
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 522
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v19, "android.media.extra.BT_FOLDER_TYPE"

    const-string v20, "android.media.metadata.BT_FOLDER_TYPE"

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->d(Ljava/lang/String;)J

    move-result-wide v20

    .line 522
    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 524
    invoke-virtual {v4, v5}, Landroid/support/v4/media/j$a;->a(Landroid/os/Bundle;)Landroid/support/v4/media/j$a;

    .line 526
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v4}, Landroid/support/v4/media/j$a;->a()Landroid/support/v4/media/j;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v4/media/m;->P:Landroid/support/v4/media/j;

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/m;->P:Landroid/support/v4/media/j;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 477
    .end local v4    # "bob":Landroid/support/v4/media/j$a;
    .end local v7    # "i":I
    .end local v13    # "mediaUri":Landroid/net/Uri;
    .end local v14    # "mediaUriStr":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    .line 478
    .local v17, "textIndex":I
    const/4 v10, 0x0

    .line 479
    .local v10, "keyIndex":I
    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    sget-object v19, Landroid/support/v4/media/m;->L:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 480
    sget-object v19, Landroid/support/v4/media/m;->L:[Ljava/lang/String;

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "keyIndex":I
    .local v11, "keyIndex":I
    aget-object v19, v19, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/media/m;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 481
    .local v15, "next":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 483
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "textIndex":I
    .local v18, "textIndex":I
    aput-object v15, v16, v17

    move/from16 v17, v18

    .end local v18    # "textIndex":I
    .restart local v17    # "textIndex":I
    :cond_7
    move v10, v11

    .line 485
    .end local v11    # "keyIndex":I
    .restart local v10    # "keyIndex":I
    goto :goto_3

    .line 489
    .end local v10    # "keyIndex":I
    .end local v17    # "textIndex":I
    .restart local v7    # "i":I
    .local v15, "next":Landroid/graphics/Bitmap;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 498
    .local v15, "next":Ljava/lang/String;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v1, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 392
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 393
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Landroid/support/v4/media/p;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v2, 0x0

    .line 419
    .local v2, "rating":Landroid/support/v4/media/p;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 422
    iget-object v3, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/p;->a(Ljava/lang/Object;)Landroid/support/v4/media/p;

    move-result-object v2

    .line 430
    :goto_0
    return-object v2

    .line 424
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/support/v4/media/p;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MediaMetadata"

    const-string v4, "Failed to retrieve a key as Rating."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public e()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 607
    iget-object v1, p0, Landroid/support/v4/media/m;->O:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    .line 608
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/m;->O:Ljava/lang/Object;

    .line 616
    :goto_0
    return-object v1

    .line 611
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 612
    .local v0, "p":Landroid/os/Parcel;
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/media/m;->writeToParcel(Landroid/os/Parcel;I)V

    .line 613
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 614
    invoke-static {v0}, Landroid/support/v4/media/n;->a(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/media/m;->O:Ljava/lang/Object;

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 616
    iget-object v1, p0, Landroid/support/v4/media/m;->O:Ljava/lang/Object;

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 443
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-object v1

    .line 444
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MediaMetadata"

    const-string v4, "Failed to retrieve a key as Bitmap."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v4/media/m;->J:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 539
    return-void
.end method
