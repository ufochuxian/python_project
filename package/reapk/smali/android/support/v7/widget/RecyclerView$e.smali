.class public abstract Landroid/support/v7/widget/RecyclerView$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$e$d;,
        Landroid/support/v7/widget/RecyclerView$e$b;,
        Landroid/support/v7/widget/RecyclerView$e$c;,
        Landroid/support/v7/widget/RecyclerView$e$a;
    }
.end annotation


# static fields
.field public static final h:I = 0x2

.field public static final i:I = 0x8

.field public static final j:I = 0x4

.field public static final k:I = 0x800

.field public static final l:I = 0x1000


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$e$c;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$e$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 11807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11863
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$c;

    .line 11864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    .line 11867
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    .line 11868
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    .line 11869
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    .line 11870
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    .line 12471
    return-void
.end method

.method static e(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 5
    .param p0, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    const/4 v4, -0x1

    .line 12192
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView$w;->access$1400(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v3

    and-int/lit8 v0, v3, 0xe

    .line 12193
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12194
    const/4 v3, 0x4

    .line 12203
    :goto_0
    return v3

    .line 12196
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    .line 12197
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->getOldPosition()I

    move-result v1

    .line 12198
    .local v1, "oldPos":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->getAdapterPosition()I

    move-result v2

    .line 12199
    .local v2, "pos":I
    if-eq v1, v4, :cond_1

    if-eq v2, v4, :cond_1

    if-eq v1, v2, :cond_1

    .line 12200
    or-int/lit16 v0, v0, 0x800

    .end local v1    # "oldPos":I
    .end local v2    # "pos":I
    :cond_1
    move v3, v0

    .line 12203
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$e$d;
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .prologue
    .line 12021
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->j()Landroid/support/v7/widget/RecyclerView$e$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$e$d;->a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$e$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$w;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$d;
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$t;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3, "changeFlags"    # I
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/z;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$t;",
            "Landroid/support/v7/widget/RecyclerView$w;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$e$d;"
        }
    .end annotation

    .prologue
    .line 11992
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->j()Landroid/support/v7/widget/RecyclerView$e$d;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$e$d;->a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$e$d;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method public a(J)V
    .locals 1
    .param p1, "moveDuration"    # J

    .prologue
    .line 11887
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    .line 11888
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$e$c;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$e$c;

    .prologue
    .line 11953
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$c;

    .line 11954
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$e$b;)Z
    .locals 2
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$e$b;

    .prologue
    .line 12348
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->b()Z

    move-result v0

    .line 12349
    .local v0, "running":Z
    if-eqz p1, :cond_0

    .line 12350
    if-nez v0, :cond_1

    .line 12351
    invoke-interface {p1}, Landroid/support/v7/widget/RecyclerView$e$b;->a()V

    .line 12356
    :cond_0
    :goto_0
    return v0

    .line 12353
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$w;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 12411
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->j(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    return v0
.end method

.method public b(J)V
    .locals 1
    .param p1, "addDuration"    # J

    .prologue
    .line 11905
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    .line 11906
    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
.end method

.method public c(J)V
    .locals 1
    .param p1, "removeDuration"    # J

    .prologue
    .line 11923
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    .line 11924
    return-void
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$e$d;Landroid/support/v7/widget/RecyclerView$e$d;)Z
    .param p1    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$e$d;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
.end method

.method public abstract d()V
.end method

.method public d(J)V
    .locals 1
    .param p1, "changeDuration"    # J

    .prologue
    .line 11941
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    .line 11942
    return-void
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$w;)V
.end method

.method public e()J
    .locals 2

    .prologue
    .line 11878
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 11896
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 12276
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->g(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 12277
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$c;

    if-eqz v0, :cond_0

    .line 12278
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$c;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$c;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 12280
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 11914
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 12291
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 11932
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    return-wide v0
.end method

.method public final h(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 12317
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->i(Landroid/support/v7/widget/RecyclerView$w;)V

    .line 12318
    return-void
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 12419
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 12420
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12421
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v2}, Landroid/support/v7/widget/RecyclerView$e$b;->a()V

    .line 12420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12423
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 12424
    return-void
.end method

.method public i(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;

    .prologue
    .line 12329
    return-void
.end method

.method public j()Landroid/support/v7/widget/RecyclerView$e$d;
    .locals 1

    .prologue
    .line 12436
    new-instance v0, Landroid/support/v7/widget/RecyclerView$e$d;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$e$d;-><init>()V

    return-object v0
.end method

.method public j(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$w;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 12381
    const/4 v0, 0x1

    return v0
.end method
