.class public final Landroid/support/v4/media/session/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/p$b;,
        Landroid/support/v4/media/session/p$c;,
        Landroid/support/v4/media/session/p$f;,
        Landroid/support/v4/media/session/p$d;,
        Landroid/support/v4/media/session/p$g;,
        Landroid/support/v4/media/session/p$e;,
        Landroid/support/v4/media/session/p$a;
    }
.end annotation


# static fields
.field public static final A:I = 0x6

.field public static final B:I = 0x7

.field public static final C:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/session/p;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:I = 0x9

.field public static final E:I = 0xa

.field public static final F:I = 0xb

.field public static final G:J = -0x1L

.field public static final H:I = 0x0

.field public static final I:I = 0x1

.field public static final J:I = 0x2

.field public static final K:I = 0x3

.field public static final L:I = 0x4

.field public static final M:I = 0x5

.field public static final N:I = 0x6

.field public static final O:I = 0x7

.field public static final P:I = 0x8

.field public static final Q:I = 0x9

.field public static final R:I = 0xa

.field public static final S:I = 0xb

.field public static final T:I = 0x0

.field public static final U:I = 0x1

.field public static final V:I = 0x2

.field public static final a:J = 0x1L

.field private static final ah:I = 0x7f

.field private static final ai:I = 0x7e

.field public static final b:J = 0x2L

.field public static final c:J = 0x4L

.field public static final d:J = 0x8L

.field public static final e:J = 0x10L

.field public static final f:J = 0x20L

.field public static final g:J = 0x40L

.field public static final h:J = 0x80L

.field public static final i:J = 0x100L

.field public static final j:J = 0x200L

.field public static final k:J = 0x400L

.field public static final l:J = 0x800L

.field public static final m:J = 0x1000L

.field public static final n:J = 0x2000L

.field public static final o:J = 0x4000L

.field public static final p:J = 0x8000L

.field public static final q:J = 0x10000L

.field public static final r:J = 0x20000L

.field public static final s:J = 0x40000L

.field public static final t:J = 0x80000L

.field public static final u:I = 0x0

.field public static final v:I = 0x1

.field public static final w:I = 0x2

.field public static final x:I = 0x3

.field public static final y:I = 0x4

.field public static final z:I = 0x5


# instance fields
.field final W:I

.field final X:J

.field final Y:J

.field final Z:F

.field final aa:J

.field final ab:I

.field final ac:Ljava/lang/CharSequence;

.field final ad:J

.field ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/p$c;",
            ">;"
        }
    .end annotation
.end field

.field final af:J

.field final ag:Landroid/os/Bundle;

.field private aj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 779
    new-instance v0, Landroid/support/v4/media/session/p$1;

    invoke-direct {v0}, Landroid/support/v4/media/session/p$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "bufferedPosition"    # J
    .param p6, "rate"    # F
    .param p7, "actions"    # J
    .param p9, "errorCode"    # I
    .param p10, "errorMessage"    # Ljava/lang/CharSequence;
    .param p11, "updateTime"    # J
    .param p14, "activeItemId"    # J
    .param p16, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJI",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/p$c;",
            ">;J",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    .local p13, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/p$c;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput p1, p0, Landroid/support/v4/media/session/p;->W:I

    .line 491
    iput-wide p2, p0, Landroid/support/v4/media/session/p;->X:J

    .line 492
    iput-wide p4, p0, Landroid/support/v4/media/session/p;->Y:J

    .line 493
    iput p6, p0, Landroid/support/v4/media/session/p;->Z:F

    .line 494
    iput-wide p7, p0, Landroid/support/v4/media/session/p;->aa:J

    .line 495
    iput p9, p0, Landroid/support/v4/media/session/p;->ab:I

    .line 496
    iput-object p10, p0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    .line 497
    iput-wide p11, p0, Landroid/support/v4/media/session/p;->ad:J

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    .line 499
    move-wide/from16 v0, p14

    iput-wide v0, p0, Landroid/support/v4/media/session/p;->af:J

    .line 500
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/support/v4/media/session/p;->ag:Landroid/os/Bundle;

    .line 501
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/p;->W:I

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/p;->X:J

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/p;->Z:F

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/p;->ad:J

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/p;->Y:J

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/p;->aa:J

    .line 510
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    .line 511
    sget-object v0, Landroid/support/v4/media/session/p$c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/p;->af:J

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/p;->ag:Landroid/os/Bundle;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/p;->ab:I

    .line 516
    return-void
.end method

.method public static a(J)I
    .locals 2
    .param p0, "action"    # J

    .prologue
    .line 452
    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 453
    const/16 v0, 0x7e

    .line 469
    :goto_0
    return v0

    .line 454
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 455
    const/16 v0, 0x7f

    goto :goto_0

    .line 456
    :cond_1
    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-nez v0, :cond_2

    .line 457
    const/16 v0, 0x57

    goto :goto_0

    .line 458
    :cond_2
    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-nez v0, :cond_3

    .line 459
    const/16 v0, 0x58

    goto :goto_0

    .line 460
    :cond_3
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_4

    .line 461
    const/16 v0, 0x56

    goto :goto_0

    .line 462
    :cond_4
    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-nez v0, :cond_5

    .line 463
    const/16 v0, 0x5a

    goto :goto_0

    .line 464
    :cond_5
    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_6

    .line 465
    const/16 v0, 0x59

    goto :goto_0

    .line 466
    :cond_6
    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-nez v0, :cond_7

    .line 467
    const/16 v0, 0x55

    goto :goto_0

    .line 469
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Landroid/support/v4/media/session/p;
    .locals 21
    .param p0, "stateObj"    # Ljava/lang/Object;

    .prologue
    .line 716
    if-eqz p0, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 717
    :cond_0
    const/4 v2, 0x0

    .line 744
    :goto_0
    return-object v2

    .line 720
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 721
    .local v20, "customActionObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v15, 0x0

    .line 722
    .local v15, "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/p$c;>;"
    if-eqz v20, :cond_2

    .line 723
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/p$c;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 724
    .restart local v15    # "customActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/p$c;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 725
    .local v19, "customActionObj":Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Landroid/support/v4/media/session/p$c;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/p$c;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 728
    .end local v19    # "customActionObj":Ljava/lang/Object;
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_3

    .line 729
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/r;->a(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v18

    .line 731
    .local v18, "extras":Landroid/os/Bundle;
    :goto_2
    new-instance v2, Landroid/support/v4/media/session/p;

    .line 732
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->a(Ljava/lang/Object;)I

    move-result v3

    .line 733
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->b(Ljava/lang/Object;)J

    move-result-wide v4

    .line 734
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->c(Ljava/lang/Object;)J

    move-result-wide v6

    .line 735
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->d(Ljava/lang/Object;)F

    move-result v8

    .line 736
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->e(Ljava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 738
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 739
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->g(Ljava/lang/Object;)J

    move-result-wide v13

    .line 741
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/q;->i(Ljava/lang/Object;)J

    move-result-wide v16

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/p;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 743
    .local v2, "state":Landroid/support/v4/media/session/p;
    move-object/from16 v0, p0

    iput-object v0, v2, Landroid/support/v4/media/session/p;->aj:Ljava/lang/Object;

    goto :goto_0

    .line 729
    .end local v2    # "state":Landroid/support/v4/media/session/p;
    .end local v18    # "extras":Landroid/os/Bundle;
    :cond_3
    const/16 v18, 0x0

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Landroid/support/v4/media/session/p;->W:I

    return v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 581
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->X:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->Y:J

    return-wide v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Landroid/support/v4/media/session/p;->Z:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 632
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->aa:J

    return-wide v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/p$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Landroid/support/v4/media/session/p;->ab:I

    return v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public i()J
    .locals 2

    .prologue
    .line 682
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->ad:J

    return-wide v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 694
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->af:J

    return-wide v0
.end method

.method public k()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Landroid/support/v4/media/session/p;->ag:Landroid/os/Bundle;

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/p;->aj:Ljava/lang/Object;

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/p;->aj:Ljava/lang/Object;

    .line 776
    :goto_0
    return-object v3

    .line 760
    :cond_1
    const/4 v14, 0x0

    .line 761
    .local v14, "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 762
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 763
    .restart local v14    # "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/p$c;

    .line 764
    .local v2, "customAction":Landroid/support/v4/media/session/p$c;
    invoke-virtual {v2}, Landroid/support/v4/media/session/p$c;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 767
    .end local v2    # "customAction":Landroid/support/v4/media/session/p$c;
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_3

    .line 768
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/p;->W:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/p;->X:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/p;->Y:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/p;->Z:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/p;->aa:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/p;->ad:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/p;->af:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/media/session/p;->ag:Landroid/os/Bundle;

    move-object/from16 v17, v0

    invoke-static/range {v3 .. v17}, Landroid/support/v4/media/session/r;->a(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v4/media/session/p;->aj:Ljava/lang/Object;

    .line 776
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/media/session/p;->aj:Ljava/lang/Object;

    goto :goto_0

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/media/session/p;->W:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/support/v4/media/session/p;->X:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/support/v4/media/session/p;->Y:J

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/v4/media/session/p;->Z:F

    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/support/v4/media/session/p;->aa:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/support/v4/media/session/p;->ad:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/support/v4/media/session/p;->af:J

    invoke-static/range {v3 .. v16}, Landroid/support/v4/media/session/q;->a(IJJFJLjava/lang/CharSequence;JLjava/util/List;J)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/support/v4/media/session/p;->aj:Ljava/lang/Object;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/p;->W:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/p;->X:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/p;->Y:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/p;->Z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/p;->ad:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 526
    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/p;->aa:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 527
    const-string v1, ", error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/p;->ab:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    const-string v1, ", error message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 529
    const-string v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/p;->af:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 531
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 542
    iget v0, p0, Landroid/support/v4/media/session/p;->W:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->X:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget v0, p0, Landroid/support/v4/media/session/p;->Z:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 545
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->ad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 546
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->Y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 547
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->aa:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 548
    iget-object v0, p0, Landroid/support/v4/media/session/p;->ac:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 549
    iget-object v0, p0, Landroid/support/v4/media/session/p;->ae:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 550
    iget-wide v0, p0, Landroid/support/v4/media/session/p;->af:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 551
    iget-object v0, p0, Landroid/support/v4/media/session/p;->ag:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 553
    iget v0, p0, Landroid/support/v4/media/session/p;->ab:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    return-void
.end method
