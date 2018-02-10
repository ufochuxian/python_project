.class public Landroid/support/v4/media/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/a$k$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x1

.field public static final b:I = 0x2


# instance fields
.field private final c:I

.field private final d:Landroid/support/v4/media/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 468
    new-instance v0, Landroid/support/v4/media/a$k$1;

    invoke-direct {v0}, Landroid/support/v4/media/a$k$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/a$k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/a$k;->c:I

    .line 445
    sget-object v0, Landroid/support/v4/media/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/j;

    iput-object v0, p0, Landroid/support/v4/media/a$k;->d:Landroid/support/v4/media/j;

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/j;I)V
    .locals 2
    .param p1, "description"    # Landroid/support/v4/media/j;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    if-nez p1, :cond_0

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "description must have a non-empty media id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    iput p2, p0, Landroid/support/v4/media/a$k;->c:I

    .line 437
    iput-object p1, p0, Landroid/support/v4/media/a$k;->d:Landroid/support/v4/media/j;

    .line 438
    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/a$k;
    .locals 4
    .param p0, "itemObj"    # Ljava/lang/Object;

    .prologue
    .line 392
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 393
    :cond_0
    const/4 v2, 0x0

    .line 399
    :goto_0
    return-object v2

    .line 395
    :cond_1
    invoke-static {p0}, Landroid/support/v4/media/b$c;->a(Ljava/lang/Object;)I

    move-result v1

    .line 398
    .local v1, "flags":I
    invoke-static {p0}, Landroid/support/v4/media/b$c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 397
    invoke-static {v2}, Landroid/support/v4/media/j;->a(Ljava/lang/Object;)Landroid/support/v4/media/j;

    move-result-object v0

    .line 399
    .local v0, "description":Landroid/support/v4/media/j;
    new-instance v2, Landroid/support/v4/media/a$k;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/media/a$k;-><init>(Landroid/support/v4/media/j;I)V

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/a$k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "itemList":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2

    .line 414
    :cond_0
    const/4 v1, 0x0

    .line 420
    :cond_1
    return-object v1

    .line 416
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/a$k;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 418
    .local v0, "itemObj":Ljava/lang/Object;
    invoke-static {v0}, Landroid/support/v4/media/a$k;->a(Ljava/lang/Object;)Landroid/support/v4/media/a$k;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/support/v4/media/a$k;->c:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/support/v4/media/a$k;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/support/v4/media/a$k;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/support/v4/media/j;
    .locals 1
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v4/media/a$k;->d:Landroid/support/v4/media/j;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Landroid/support/v4/media/a$k;->d:Landroid/support/v4/media/j;

    invoke-virtual {v0}, Landroid/support/v4/media/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/a$k;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/a$k;->d:Landroid/support/v4/media/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 464
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 455
    iget v0, p0, Landroid/support/v4/media/a$k;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v0, p0, Landroid/support/v4/media/a$k;->d:Landroid/support/v4/media/j;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/j;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    return-void
.end method
