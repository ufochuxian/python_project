.class final Landroid/support/v7/widget/GridLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final synthetic x:Z


# instance fields
.field private A:Landroid/support/v7/widget/GridLayout$h;

.field private B:Landroid/support/v7/widget/GridLayout$h;

.field public final d:Z

.field public e:I

.field f:Landroid/support/v7/widget/GridLayout$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$j;",
            "Landroid/support/v7/widget/GridLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field h:Landroid/support/v7/widget/GridLayout$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field j:Landroid/support/v7/widget/GridLayout$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:[I

.field public m:Z

.field public n:[I

.field public o:Z

.field public p:[Landroid/support/v7/widget/GridLayout$b;

.field public q:Z

.field public r:[I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:[I

.field w:Z

.field final synthetic y:Landroid/support/v7/widget/GridLayout;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1092
    const-class v0, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/GridLayout$d;->x:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/support/v7/widget/GridLayout;Z)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v7/widget/GridLayout;
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1132
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->e:I

    .line 1100
    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->z:I

    .line 1103
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->g:Z

    .line 1106
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->i:Z

    .line 1109
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->k:Z

    .line 1112
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->m:Z

    .line 1115
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->o:Z

    .line 1118
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->q:Z

    .line 1121
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->s:Z

    .line 1124
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->u:Z

    .line 1127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->w:Z

    .line 1129
    new-instance v0, Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$h;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->A:Landroid/support/v7/widget/GridLayout$h;

    .line 1130
    new-instance v0, Landroid/support/v7/widget/GridLayout$h;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$h;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->B:Landroid/support/v7/widget/GridLayout$h;

    .line 1133
    iput-boolean p2, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    .line 1134
    return-void
.end method

.method private a(IF)V
    .locals 9
    .param p1, "totalDelta"    # I
    .param p2, "totalWeight"    # F

    .prologue
    .line 1621
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->v:[I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1622
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1623
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1624
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 1622
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1627
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v4

    .line 1628
    .local v4, "lp":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v7, :cond_2

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1629
    .local v5, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_2
    iget v6, v5, Landroid/support/v7/widget/GridLayout$j;->f:F

    .line 1630
    .local v6, "weight":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_0

    .line 1631
    int-to-float v7, p1

    mul-float/2addr v7, v6

    div-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1632
    .local v2, "delta":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->v:[I

    aput v2, v7, v3

    .line 1635
    sub-int/2addr p1, v2

    .line 1636
    sub-float/2addr p2, v6

    goto :goto_1

    .line 1628
    .end local v2    # "delta":I
    .end local v5    # "spec":Landroid/support/v7/widget/GridLayout$j;
    .end local v6    # "weight":F
    :cond_2
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_2

    .line 1639
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_3
    return-void
.end method

.method private a(II)V
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1730
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->A:Landroid/support/v7/widget/GridLayout$h;

    iput p1, v0, Landroid/support/v7/widget/GridLayout$h;->a:I

    .line 1731
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->B:Landroid/support/v7/widget/GridLayout$h;

    neg-int v1, p2

    iput v1, v0, Landroid/support/v7/widget/GridLayout$h;->a:I

    .line 1732
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->s:Z

    .line 1733
    return-void
.end method

.method private a(Landroid/support/v7/widget/GridLayout$i;Z)V
    .locals 6
    .param p2, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "links":Landroid/support/v7/widget/GridLayout$i;, "Landroid/support/v7/widget/GridLayout$i<Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;>;"
    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$i;->c:[Ljava/lang/Object;

    check-cast v3, [Landroid/support/v7/widget/GridLayout$h;

    .line 1233
    .local v3, "spans":[Landroid/support/v7/widget/GridLayout$h;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 1234
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayout$h;->a()V

    .line 1233
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->c()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v5

    iget-object v0, v5, Landroid/support/v7/widget/GridLayout$i;->c:[Ljava/lang/Object;

    check-cast v0, [Landroid/support/v7/widget/GridLayout$e;

    .line 1239
    .local v0, "bounds":[Landroid/support/v7/widget/GridLayout$e;
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1240
    aget-object v5, v0, v1

    invoke-virtual {v5, p2}, Landroid/support/v7/widget/GridLayout$e;->a(Z)I

    move-result v2

    .line 1241
    .local v2, "size":I
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/GridLayout$i;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayout$h;

    .line 1243
    .local v4, "valueHolder":Landroid/support/v7/widget/GridLayout$h;
    iget v5, v4, Landroid/support/v7/widget/GridLayout$h;->a:I

    if-eqz p2, :cond_1

    .end local v2    # "size":I
    :goto_2
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/GridLayout$h;->a:I

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1243
    .restart local v2    # "size":I
    :cond_1
    neg-int v2, v2

    goto :goto_2

    .line 1245
    .end local v2    # "size":I
    .end local v4    # "valueHolder":Landroid/support/v7/widget/GridLayout$h;
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$b;[Z)V
    .locals 7
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "arcs"    # [Landroid/support/v7/widget/GridLayout$b;
    .param p3, "culprits0"    # [Z

    .prologue
    .line 1458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    .local v2, "culprits":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1460
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 1461
    aget-object v0, p2, v1

    .line 1462
    .local v0, "arc":Landroid/support/v7/widget/GridLayout$b;
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_0

    .line 1463
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1465
    :cond_0
    iget-boolean v4, v0, Landroid/support/v7/widget/GridLayout$b;->c:Z

    if-nez v4, :cond_1

    .line 1466
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1469
    .end local v0    # "arc":Landroid/support/v7/widget/GridLayout$b;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    iget-object v4, v4, Landroid/support/v7/widget/GridLayout;->s:Landroid/util/Printer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " constraints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayout$d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are inconsistent; permanently removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1470
    invoke-direct {p0, v3}, Landroid/support/v7/widget/GridLayout$d;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1469
    invoke-interface {v4, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;)V
    .locals 1
    .param p2, "key"    # Landroid/support/v7/widget/GridLayout$f;
    .param p3, "size"    # Landroid/support/v7/widget/GridLayout$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1294
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    .line 1295
    return-void
.end method

.method private a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V
    .locals 4
    .param p2, "key"    # Landroid/support/v7/widget/GridLayout$f;
    .param p3, "size"    # Landroid/support/v7/widget/GridLayout$h;
    .param p4, "ignoreIfAlreadyPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1277
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    invoke-virtual {p2}, Landroid/support/v7/widget/GridLayout$f;->a()I

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1282
    :cond_0
    if-eqz p4, :cond_2

    .line 1283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$b;

    .line 1284
    .local v0, "arc":Landroid/support/v7/widget/GridLayout$b;
    iget-object v1, v0, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    .line 1285
    .local v1, "span":Landroid/support/v7/widget/GridLayout$f;
    invoke-virtual {v1, p2}, Landroid/support/v7/widget/GridLayout$f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1290
    .end local v0    # "arc":Landroid/support/v7/widget/GridLayout$b;
    .end local v1    # "span":Landroid/support/v7/widget/GridLayout$f;
    :cond_2
    new-instance v2, Landroid/support/v7/widget/GridLayout$b;

    invoke-direct {v2, p2, p3}, Landroid/support/v7/widget/GridLayout$b;-><init>(Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1363
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    .local p2, "links":Landroid/support/v7/widget/GridLayout$i;, "Landroid/support/v7/widget/GridLayout$i<Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$i;->b:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$f;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1364
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$i;->b:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$f;

    aget-object v1, v2, v0

    .line 1365
    .local v1, "key":Landroid/support/v7/widget/GridLayout$f;
    iget-object v2, p2, Landroid/support/v7/widget/GridLayout$i;->c:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$h;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    .line 1363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1367
    .end local v1    # "key":Landroid/support/v7/widget/GridLayout$f;
    :cond_0
    return-void
.end method

.method private a([I)V
    .locals 1
    .param p1, "locations"    # [I

    .prologue
    .line 1433
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1434
    return-void
.end method

.method private a([ILandroid/support/v7/widget/GridLayout$b;)Z
    .locals 7
    .param p1, "locations"    # [I
    .param p2, "entry"    # Landroid/support/v7/widget/GridLayout$b;

    .prologue
    const/4 v5, 0x0

    .line 1417
    iget-boolean v6, p2, Landroid/support/v7/widget/GridLayout$b;->c:Z

    if-nez v6, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return v5

    .line 1420
    :cond_1
    iget-object v1, p2, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    .line 1421
    .local v1, "span":Landroid/support/v7/widget/GridLayout$f;
    iget v2, v1, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 1422
    .local v2, "u":I
    iget v3, v1, Landroid/support/v7/widget/GridLayout$f;->b:I

    .line 1423
    .local v3, "v":I
    iget-object v6, p2, Landroid/support/v7/widget/GridLayout$b;->b:Landroid/support/v7/widget/GridLayout$h;

    iget v4, v6, Landroid/support/v7/widget/GridLayout$h;->a:I

    .line 1424
    .local v4, "value":I
    aget v6, p1, v2

    add-int v0, v6, v4

    .line 1425
    .local v0, "candidate":I
    aget v6, p1, v3

    if-le v0, v6, :cond_0

    .line 1426
    aput v0, p1, v3

    .line 1427
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private a([Landroid/support/v7/widget/GridLayout$b;[I)Z
    .locals 1
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$b;
    .param p2, "locations"    # [I

    .prologue
    .line 1494
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout$d;->a([Landroid/support/v7/widget/GridLayout$b;[IZ)Z

    move-result v0

    return v0
.end method

.method private a([Landroid/support/v7/widget/GridLayout$b;[IZ)Z
    .locals 12
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$b;
    .param p2, "locations"    # [I
    .param p3, "modifyOnError"    # Z

    .prologue
    .line 1498
    iget-boolean v10, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v10, :cond_0

    const-string v2, "horizontal"

    .line 1499
    .local v2, "axisName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 1500
    .local v0, "N":I
    const/4 v8, 0x0

    .line 1502
    .local v8, "originalCulprits":[Z
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_1
    array-length v10, p1

    if-ge v9, v10, :cond_c

    .line 1503
    invoke-direct {p0, p2}, Landroid/support/v7/widget/GridLayout$d;->a([I)V

    .line 1506
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_4

    .line 1507
    const/4 v3, 0x0

    .line 1508
    .local v3, "changed":Z
    const/4 v6, 0x0

    .local v6, "j":I
    array-length v7, p1

    .local v7, "length":I
    :goto_3
    if-ge v6, v7, :cond_1

    .line 1509
    aget-object v10, p1, v6

    invoke-direct {p0, p2, v10}, Landroid/support/v7/widget/GridLayout$d;->a([ILandroid/support/v7/widget/GridLayout$b;)Z

    move-result v10

    or-int/2addr v3, v10

    .line 1508
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1498
    .end local v0    # "N":I
    .end local v2    # "axisName":Ljava/lang/String;
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    .end local v8    # "originalCulprits":[Z
    .end local v9    # "p":I
    :cond_0
    const-string v2, "vertical"

    goto :goto_0

    .line 1511
    .restart local v0    # "N":I
    .restart local v2    # "axisName":Ljava/lang/String;
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    .restart local v8    # "originalCulprits":[Z
    .restart local v9    # "p":I
    :cond_1
    if-nez v3, :cond_3

    .line 1512
    if-eqz v8, :cond_2

    .line 1513
    invoke-direct {p0, v2, p1, v8}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/lang/String;[Landroid/support/v7/widget/GridLayout$b;[Z)V

    .line 1515
    :cond_2
    const/4 v10, 0x1

    .line 1546
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    :goto_4
    return v10

    .line 1506
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1519
    .end local v3    # "changed":Z
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_4
    if-nez p3, :cond_5

    .line 1520
    const/4 v10, 0x0

    goto :goto_4

    .line 1523
    :cond_5
    array-length v10, p1

    new-array v4, v10, [Z

    .line 1524
    .local v4, "culprits":[Z
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v0, :cond_7

    .line 1525
    const/4 v6, 0x0

    .restart local v6    # "j":I
    array-length v7, p1

    .restart local v7    # "length":I
    :goto_6
    if-ge v6, v7, :cond_6

    .line 1526
    aget-boolean v10, v4, v6

    aget-object v11, p1, v6

    invoke-direct {p0, p2, v11}, Landroid/support/v7/widget/GridLayout$d;->a([ILandroid/support/v7/widget/GridLayout$b;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v4, v6

    .line 1525
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1524
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1530
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_7
    if-nez v9, :cond_8

    .line 1531
    move-object v8, v4

    .line 1534
    :cond_8
    const/4 v5, 0x0

    :goto_7
    array-length v10, p1

    if-ge v5, v10, :cond_b

    .line 1535
    aget-boolean v10, v4, v5

    if-eqz v10, :cond_9

    .line 1536
    aget-object v1, p1, v5

    .line 1538
    .local v1, "arc":Landroid/support/v7/widget/GridLayout$b;
    iget-object v10, v1, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    iget v10, v10, Landroid/support/v7/widget/GridLayout$f;->a:I

    iget-object v11, v1, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    iget v11, v11, Landroid/support/v7/widget/GridLayout$f;->b:I

    if-ge v10, v11, :cond_a

    .line 1534
    .end local v1    # "arc":Landroid/support/v7/widget/GridLayout$b;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1541
    .restart local v1    # "arc":Landroid/support/v7/widget/GridLayout$b;
    :cond_a
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/support/v7/widget/GridLayout$b;->c:Z

    .line 1502
    .end local v1    # "arc":Landroid/support/v7/widget/GridLayout$b;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1546
    .end local v4    # "culprits":[Z
    .end local v5    # "i":I
    :cond_c
    const/4 v10, 0x1

    goto :goto_4
.end method

.method private a(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;)[",
            "Landroid/support/v7/widget/GridLayout$b;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v7/widget/GridLayout$b;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/GridLayout$b;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$d;->b([Landroid/support/v7/widget/GridLayout$b;)[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    return-object v0
.end method

.method private b(II)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1736
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$d;->a(II)V

    .line 1737
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->h()[I

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$d;->e([I)I

    move-result v0

    return v0
.end method

.method private b(Z)Landroid/support/v7/widget/GridLayout$i;
    .locals 7
    .param p1, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    const-class v5, Landroid/support/v7/widget/GridLayout$f;

    const-class v6, Landroid/support/v7/widget/GridLayout$h;

    invoke-static {v5, v6}, Landroid/support/v7/widget/GridLayout$c;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$c;

    move-result-object v3

    .line 1223
    .local v3, "result":Landroid/support/v7/widget/GridLayout$c;, "Landroid/support/v7/widget/GridLayout$c<Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;>;"
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->c()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v5

    iget-object v2, v5, Landroid/support/v7/widget/GridLayout$i;->b:[Ljava/lang/Object;

    check-cast v2, [Landroid/support/v7/widget/GridLayout$j;

    .line 1224
    .local v2, "keys":[Landroid/support/v7/widget/GridLayout$j;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1225
    if-eqz p1, :cond_0

    aget-object v5, v2, v1

    iget-object v4, v5, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 1226
    .local v4, "span":Landroid/support/v7/widget/GridLayout$f;
    :goto_1
    new-instance v5, Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {v5}, Landroid/support/v7/widget/GridLayout$h;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/GridLayout$c;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    .end local v4    # "span":Landroid/support/v7/widget/GridLayout$f;
    :cond_0
    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayout$f;->b()Landroid/support/v7/widget/GridLayout$f;

    move-result-object v4

    goto :goto_1

    .line 1228
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$c;->pack()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v5

    return-object v5
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/GridLayout$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1437
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v7, :cond_0

    const-string v6, "x"

    .line 1438
    .local v6, "var":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1439
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1440
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$b;

    .line 1441
    .local v0, "arc":Landroid/support/v7/widget/GridLayout$b;
    if-eqz v2, :cond_1

    .line 1442
    const/4 v2, 0x0

    .line 1446
    :goto_2
    iget-object v7, v0, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    iget v4, v7, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 1447
    .local v4, "src":I
    iget-object v7, v0, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    iget v1, v7, Landroid/support/v7/widget/GridLayout$f;->b:I

    .line 1448
    .local v1, "dst":I
    iget-object v7, v0, Landroid/support/v7/widget/GridLayout$b;->b:Landroid/support/v7/widget/GridLayout$h;

    iget v5, v7, Landroid/support/v7/widget/GridLayout$h;->a:I

    .line 1449
    .local v5, "value":I
    if-ge v4, v1, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ">="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1437
    .end local v0    # "arc":Landroid/support/v7/widget/GridLayout$b;
    .end local v1    # "dst":I
    .end local v2    # "first":Z
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "src":I
    .end local v5    # "value":I
    .end local v6    # "var":Ljava/lang/String;
    :cond_0
    const-string v6, "y"

    goto :goto_0

    .line 1444
    .restart local v0    # "arc":Landroid/support/v7/widget/GridLayout$b;
    .restart local v2    # "first":Z
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    .restart local v6    # "var":Ljava/lang/String;
    :cond_1
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2

    .line 1449
    .restart local v1    # "dst":I
    .restart local v4    # "src":I
    .restart local v5    # "value":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "<="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    neg-int v9, v5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1454
    .end local v0    # "arc":Landroid/support/v7/widget/GridLayout$b;
    .end local v1    # "dst":I
    .end local v4    # "src":I
    .end local v5    # "value":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private b([I)Z
    .locals 1
    .param p1, "a"    # [I

    .prologue
    .line 1587
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->d()[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/GridLayout$d;->a([Landroid/support/v7/widget/GridLayout$b;[I)Z

    move-result v0

    return v0
.end method

.method private b([Landroid/support/v7/widget/GridLayout$b;)[Landroid/support/v7/widget/GridLayout$b;
    .locals 1
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$b;

    .prologue
    .line 1320
    new-instance v0, Landroid/support/v7/widget/GridLayout$d$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$d$1;-><init>(Landroid/support/v7/widget/GridLayout$d;[Landroid/support/v7/widget/GridLayout$b;)V

    .line 1355
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$d$1;->a()[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)V
    .locals 11
    .param p1, "leading"    # Z

    .prologue
    .line 1550
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$d;->l:[I

    .line 1551
    .local v5, "margins":[I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1552
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1553
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 1551
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1550
    .end local v0    # "N":I
    .end local v1    # "c":Landroid/view/View;
    .end local v2    # "i":I
    .end local v5    # "margins":[I
    :cond_0
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$d;->n:[I

    goto :goto_0

    .line 1554
    .restart local v0    # "N":I
    .restart local v1    # "c":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v5    # "margins":[I
    :cond_1
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v4

    .line 1555
    .local v4, "lp":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v8, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v8, :cond_2

    iget-object v7, v4, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1556
    .local v7, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_3
    iget-object v6, v7, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 1557
    .local v6, "span":Landroid/support/v7/widget/GridLayout$f;
    if-eqz p1, :cond_3

    iget v3, v6, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 1558
    .local v3, "index":I
    :goto_4
    aget v8, v5, v3

    iget-object v9, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    iget-boolean v10, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    invoke-virtual {v9, v1, v10, p1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v3

    goto :goto_2

    .line 1555
    .end local v3    # "index":I
    .end local v6    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v7    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_2
    iget-object v7, v4, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_3

    .line 1557
    .restart local v6    # "span":Landroid/support/v7/widget/GridLayout$f;
    .restart local v7    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_3
    iget v3, v6, Landroid/support/v7/widget/GridLayout$f;->b:I

    goto :goto_4

    .line 1560
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v6    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v7    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_4
    return-void
.end method

.method private c([I)V
    .locals 11
    .param p1, "a"    # [I

    .prologue
    const/4 v10, 0x0

    .line 1642
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->g()[I

    move-result-object v6

    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([II)V

    .line 1643
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$d;->b([I)Z

    .line 1644
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$d;->A:Landroid/support/v7/widget/GridLayout$h;

    iget v6, v6, Landroid/support/v7/widget/GridLayout$h;->a:I

    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit8 v1, v6, 0x1

    .line 1645
    .local v1, "deltaMax":I
    const/4 v6, 0x2

    if-ge v1, v6, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    const/4 v2, 0x0

    .line 1650
    .local v2, "deltaMin":I
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->u()F

    move-result v3

    .line 1652
    .local v3, "totalWeight":F
    const/4 v4, -0x1

    .line 1653
    .local v4, "validDelta":I
    const/4 v5, 0x1

    .line 1655
    .local v5, "validSolution":Z
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1657
    int-to-long v6, v2

    int-to-long v8, v1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 1658
    .local v0, "delta":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->j()V

    .line 1659
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/GridLayout$d;->a(IF)V

    .line 1660
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->d()[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v6

    invoke-direct {p0, v6, p1, v10}, Landroid/support/v7/widget/GridLayout$d;->a([Landroid/support/v7/widget/GridLayout$b;[IZ)Z

    move-result v5

    .line 1661
    if-eqz v5, :cond_2

    .line 1662
    move v4, v0

    .line 1663
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 1665
    :cond_2
    move v1, v0

    goto :goto_1

    .line 1668
    .end local v0    # "delta":I
    :cond_3
    if-lez v4, :cond_0

    if-nez v5, :cond_0

    .line 1670
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->j()V

    .line 1671
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/GridLayout$d;->a(IF)V

    .line 1672
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$d;->b([I)Z

    goto :goto_0
.end method

.method private d([I)V
    .locals 4
    .param p1, "a"    # [I

    .prologue
    .line 1691
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->t()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1692
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$d;->b([I)Z

    .line 1696
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/GridLayout$d;->w:Z

    if-nez v3, :cond_1

    .line 1703
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1704
    .local v1, "a0":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, p1

    .local v0, "N":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1705
    aget v3, p1, v2

    sub-int/2addr v3, v1

    aput v3, p1, v2

    .line 1704
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1694
    .end local v0    # "N":I
    .end local v1    # "a0":I
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/GridLayout$d;->c([I)V

    goto :goto_0

    .line 1708
    :cond_1
    return-void
.end method

.method private e([I)I
    .locals 1
    .param p1, "locations"    # [I

    .prologue
    .line 1726
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private k()I
    .locals 8

    .prologue
    .line 1138
    const/4 v4, -0x1

    .line 1139
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1140
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1141
    .local v1, "c":Landroid/view/View;
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v3

    .line 1142
    .local v3, "params":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v7, :cond_0

    iget-object v6, v3, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1143
    .local v6, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_1
    iget-object v5, v6, Landroid/support/v7/widget/GridLayout$j;->d:Landroid/support/v7/widget/GridLayout$f;

    .line 1144
    .local v5, "span":Landroid/support/v7/widget/GridLayout$f;
    iget v7, v5, Landroid/support/v7/widget/GridLayout$f;->a:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1145
    iget v7, v5, Landroid/support/v7/widget/GridLayout$f;->b:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1146
    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayout$f;->a()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1142
    .end local v5    # "span":Landroid/support/v7/widget/GridLayout$f;
    .end local v6    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_0
    iget-object v6, v3, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    .line 1148
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "params":Landroid/support/v7/widget/GridLayout$g;
    :cond_1
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    const/high16 v4, -0x80000000

    .end local v4    # "result":I
    :cond_2
    return v4
.end method

.method private l()I
    .locals 2

    .prologue
    .line 1152
    iget v0, p0, Landroid/support/v7/widget/GridLayout$d;->z:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->k()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->z:I

    .line 1155
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout$d;->z:I

    return v0
.end method

.method private m()Landroid/support/v7/widget/GridLayout$i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$j;",
            "Landroid/support/v7/widget/GridLayout$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1181
    const-class v7, Landroid/support/v7/widget/GridLayout$j;

    const-class v8, Landroid/support/v7/widget/GridLayout$e;

    invoke-static {v7, v8}, Landroid/support/v7/widget/GridLayout$c;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$c;

    move-result-object v1

    .line 1182
    .local v1, "assoc":Landroid/support/v7/widget/GridLayout$c;, "Landroid/support/v7/widget/GridLayout$c<Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$e;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 1183
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1185
    .local v3, "c":Landroid/view/View;
    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v5

    .line 1186
    .local v5, "lp":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v7, :cond_0

    iget-object v6, v5, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1187
    .local v6, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_1
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayout$j;->a(Z)Landroid/support/v7/widget/GridLayout$a;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayout$a;->b()Landroid/support/v7/widget/GridLayout$e;

    move-result-object v2

    .line 1188
    .local v2, "bounds":Landroid/support/v7/widget/GridLayout$e;
    invoke-virtual {v1, v6, v2}, Landroid/support/v7/widget/GridLayout$c;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1182
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1186
    .end local v2    # "bounds":Landroid/support/v7/widget/GridLayout$e;
    .end local v6    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_0
    iget-object v6, v5, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    .line 1190
    .end local v3    # "c":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$c;->pack()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v7

    return-object v7
.end method

.method private n()V
    .locals 10

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->f:Landroid/support/v7/widget/GridLayout$i;

    iget-object v9, v0, Landroid/support/v7/widget/GridLayout$i;->c:[Ljava/lang/Object;

    check-cast v9, [Landroid/support/v7/widget/GridLayout$e;

    .line 1195
    .local v9, "values":[Landroid/support/v7/widget/GridLayout$e;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_0

    .line 1196
    aget-object v0, v9, v7

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$e;->a()V

    .line 1195
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1198
    :cond_0
    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v6

    .local v6, "N":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 1199
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1201
    .local v2, "c":Landroid/view/View;
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v8

    .line 1202
    .local v8, "lp":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v0, :cond_1

    iget-object v3, v8, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1203
    .local v3, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;Z)I

    move-result v1

    iget v0, v3, Landroid/support/v7/widget/GridLayout$j;->f:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1204
    :goto_3
    add-int v5, v1, v0

    .line 1205
    .local v5, "size":I
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->f:Landroid/support/v7/widget/GridLayout$i;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout$i;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$e;

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$e;->a(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$j;Landroid/support/v7/widget/GridLayout$d;I)V

    .line 1198
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1202
    .end local v3    # "spec":Landroid/support/v7/widget/GridLayout$j;
    .end local v5    # "size":I
    :cond_1
    iget-object v3, v8, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_2

    .line 1204
    .restart local v3    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->g()[I

    move-result-object v0

    aget v0, v0, v7

    goto :goto_3

    .line 1207
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "spec":Landroid/support/v7/widget/GridLayout$j;
    .end local v8    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_3
    return-void
.end method

.method private o()Landroid/support/v7/widget/GridLayout$i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1248
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->h:Landroid/support/v7/widget/GridLayout$i;

    if-nez v0, :cond_0

    .line 1249
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$d;->b(Z)Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->h:Landroid/support/v7/widget/GridLayout$i;

    .line 1251
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->i:Z

    if-nez v0, :cond_1

    .line 1252
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->h:Landroid/support/v7/widget/GridLayout$i;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$d;->a(Landroid/support/v7/widget/GridLayout$i;Z)V

    .line 1253
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->i:Z

    .line 1255
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->h:Landroid/support/v7/widget/GridLayout$i;

    return-object v0
.end method

.method private p()Landroid/support/v7/widget/GridLayout$i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$f;",
            "Landroid/support/v7/widget/GridLayout$h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1259
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->j:Landroid/support/v7/widget/GridLayout$i;

    if-nez v0, :cond_0

    .line 1260
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$d;->b(Z)Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->j:Landroid/support/v7/widget/GridLayout$i;

    .line 1262
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->k:Z

    if-nez v0, :cond_1

    .line 1263
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->j:Landroid/support/v7/widget/GridLayout$i;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$d;->a(Landroid/support/v7/widget/GridLayout$i;Z)V

    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->k:Z

    .line 1266
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->j:Landroid/support/v7/widget/GridLayout$i;

    return-object v0
.end method

.method private q()[Landroid/support/v7/widget/GridLayout$b;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .local v3, "mins":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v2, "maxs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/GridLayout$b;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->o()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$i;)V

    .line 1376
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->p()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$i;)V

    .line 1379
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$d;->w:Z

    if-eqz v6, :cond_0

    .line 1381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1382
    new-instance v6, Landroid/support/v7/widget/GridLayout$f;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, v7}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    new-instance v7, Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {v7, v8}, Landroid/support/v7/widget/GridLayout$h;-><init>(I)V

    invoke-direct {p0, v3, v6, v7}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;)V

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1388
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v0

    .line 1389
    .local v0, "N":I
    new-instance v6, Landroid/support/v7/widget/GridLayout$f;

    invoke-direct {v6, v8, v0}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->A:Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {p0, v3, v6, v7, v8}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    .line 1390
    new-instance v6, Landroid/support/v7/widget/GridLayout$f;

    invoke-direct {v6, v0, v8}, Landroid/support/v7/widget/GridLayout$f;-><init>(II)V

    iget-object v7, p0, Landroid/support/v7/widget/GridLayout$d;->B:Landroid/support/v7/widget/GridLayout$h;

    invoke-direct {p0, v2, v6, v7, v8}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;Landroid/support/v7/widget/GridLayout$f;Landroid/support/v7/widget/GridLayout$h;Z)V

    .line 1393
    invoke-direct {p0, v3}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v5

    .line 1394
    .local v5, "sMins":[Landroid/support/v7/widget/GridLayout$b;
    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayout$d;->a(Ljava/util/List;)[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v4

    .line 1396
    .local v4, "sMaxs":[Landroid/support/v7/widget/GridLayout$b;
    invoke-static {v5, v4}, Landroid/support/v7/widget/GridLayout;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/support/v7/widget/GridLayout$b;

    return-object v6
.end method

.method private r()V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->o()Landroid/support/v7/widget/GridLayout$i;

    .line 1402
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->p()Landroid/support/v7/widget/GridLayout$i;

    .line 1403
    return-void
.end method

.method private s()Z
    .locals 7

    .prologue
    .line 1591
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1592
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1593
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1591
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1596
    :cond_1
    iget-object v5, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v3

    .line 1597
    .local v3, "lp":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v5, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v5, :cond_2

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1598
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_1
    iget v5, v4, Landroid/support/v7/widget/GridLayout$j;->f:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 1599
    const/4 v5, 0x1

    .line 1602
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$g;
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_2
    return v5

    .line 1597
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_2
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_1

    .line 1602
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 1606
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->u:Z

    if-nez v0, :cond_0

    .line 1607
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->s()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->t:Z

    .line 1608
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->u:Z

    .line 1610
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->t:Z

    return v0
.end method

.method private u()F
    .locals 8

    .prologue
    .line 1677
    const/4 v5, 0x0

    .line 1678
    .local v5, "totalWeight":F
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1679
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1680
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 1678
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1683
    :cond_0
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/GridLayout;->a(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$g;

    move-result-object v3

    .line 1684
    .local v3, "lp":Landroid/support/v7/widget/GridLayout$g;
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v6, :cond_1

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$g;->b:Landroid/support/v7/widget/GridLayout$j;

    .line 1685
    .local v4, "spec":Landroid/support/v7/widget/GridLayout$j;
    :goto_2
    iget v6, v4, Landroid/support/v7/widget/GridLayout$j;->f:F

    add-float/2addr v5, v6

    goto :goto_1

    .line 1684
    .end local v4    # "spec":Landroid/support/v7/widget/GridLayout$j;
    :cond_1
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$g;->a:Landroid/support/v7/widget/GridLayout$j;

    goto :goto_2

    .line 1687
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/support/v7/widget/GridLayout$g;
    :cond_2
    return v5
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 1159
    iget v0, p0, Landroid/support/v7/widget/GridLayout$d;->e:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->l()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1163
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->l()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "column"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->a(Ljava/lang/String;)V

    .line 1168
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/GridLayout$d;->e:I

    .line 1169
    return-void

    .line 1164
    :cond_1
    const-string v0, "row"

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .param p1, "orderPreserved"    # Z

    .prologue
    .line 1176
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$d;->w:Z

    .line 1177
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->i()V

    .line 1178
    return-void
.end method

.method a([Landroid/support/v7/widget/GridLayout$b;)[[Landroid/support/v7/widget/GridLayout$b;
    .locals 10
    .param p1, "arcs"    # [Landroid/support/v7/widget/GridLayout$b;

    .prologue
    const/4 v5, 0x0

    .line 1300
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 1301
    .local v0, "N":I
    new-array v3, v0, [[Landroid/support/v7/widget/GridLayout$b;

    .line 1302
    .local v3, "result":[[Landroid/support/v7/widget/GridLayout$b;
    new-array v4, v0, [I

    .line 1303
    .local v4, "sizes":[I
    array-length v7, p1

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v1, p1, v6

    .line 1304
    .local v1, "arc":Landroid/support/v7/widget/GridLayout$b;
    iget-object v8, v1, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    iget v8, v8, Landroid/support/v7/widget/GridLayout$f;->a:I

    aget v9, v4, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v4, v8

    .line 1303
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1306
    .end local v1    # "arc":Landroid/support/v7/widget/GridLayout$b;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 1307
    aget v6, v4, v2

    new-array v6, v6, [Landroid/support/v7/widget/GridLayout$b;

    aput-object v6, v3, v2

    .line 1306
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1310
    :cond_1
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1311
    array-length v6, p1

    :goto_2
    if-ge v5, v6, :cond_2

    aget-object v1, p1, v5

    .line 1312
    .restart local v1    # "arc":Landroid/support/v7/widget/GridLayout$b;
    iget-object v7, v1, Landroid/support/v7/widget/GridLayout$b;->a:Landroid/support/v7/widget/GridLayout$f;

    iget v2, v7, Landroid/support/v7/widget/GridLayout$f;->a:I

    .line 1313
    aget-object v7, v3, v2

    aget v8, v4, v2

    add-int/lit8 v9, v8, 0x1

    aput v9, v4, v2

    aput-object v1, v7, v8

    .line 1311
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1316
    .end local v1    # "arc":Landroid/support/v7/widget/GridLayout$b;
    :cond_2
    return-object v3
.end method

.method public b(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 1741
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1742
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1743
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 1754
    sget-boolean v3, Landroid/support/v7/widget/GridLayout$d;->x:Z

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1745
    :sswitch_0
    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/GridLayout$d;->b(II)I

    move-result v2

    .line 1755
    :cond_0
    :goto_0
    return v2

    .line 1748
    :sswitch_1
    invoke-direct {p0, v1, v1}, Landroid/support/v7/widget/GridLayout$d;->b(II)I

    move-result v2

    goto :goto_0

    .line 1751
    :sswitch_2
    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/GridLayout$d;->b(II)I

    move-result v2

    goto :goto_0

    .line 1743
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1172
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->w:Z

    return v0
.end method

.method public c()Landroid/support/v7/widget/GridLayout$i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$i",
            "<",
            "Landroid/support/v7/widget/GridLayout$j;",
            "Landroid/support/v7/widget/GridLayout$e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->f:Landroid/support/v7/widget/GridLayout$i;

    if-nez v0, :cond_0

    .line 1211
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->m()Landroid/support/v7/widget/GridLayout$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->f:Landroid/support/v7/widget/GridLayout$i;

    .line 1213
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->g:Z

    if-nez v0, :cond_1

    .line 1214
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->n()V

    .line 1215
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->g:Z

    .line 1217
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->f:Landroid/support/v7/widget/GridLayout$i;

    return-object v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1761
    invoke-direct {p0, p1, p1}, Landroid/support/v7/widget/GridLayout$d;->a(II)V

    .line 1762
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->h()[I

    .line 1763
    return-void
.end method

.method public d()[Landroid/support/v7/widget/GridLayout$b;
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->p:[Landroid/support/v7/widget/GridLayout$b;

    if-nez v0, :cond_0

    .line 1407
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->q()[Landroid/support/v7/widget/GridLayout$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->p:[Landroid/support/v7/widget/GridLayout$b;

    .line 1409
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->q:Z

    if-nez v0, :cond_1

    .line 1410
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$d;->r()V

    .line 1411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->q:Z

    .line 1413
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->p:[Landroid/support/v7/widget/GridLayout$b;

    return-object v0
.end method

.method public e()[I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1565
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->l:[I

    if-nez v0, :cond_0

    .line 1566
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->l:[I

    .line 1568
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->m:Z

    if-nez v0, :cond_1

    .line 1569
    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$d;->c(Z)V

    .line 1570
    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->m:Z

    .line 1572
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->l:[I

    return-object v0
.end method

.method public f()[I
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->n:[I

    if-nez v0, :cond_0

    .line 1577
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->n:[I

    .line 1579
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->o:Z

    if-nez v0, :cond_1

    .line 1580
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$d;->c(Z)V

    .line 1581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->o:Z

    .line 1583
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->n:[I

    return-object v0
.end method

.method public g()[I
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->v:[I

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->y:Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->v:[I

    .line 1617
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$d;->v:[I

    return-object v0
.end method

.method public h()[I
    .locals 2

    .prologue
    .line 1711
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->r:[I

    if-nez v1, :cond_0

    .line 1712
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->a()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1713
    .local v0, "N":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->r:[I

    .line 1715
    .end local v0    # "N":I
    :cond_0
    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->s:Z

    if-nez v1, :cond_1

    .line 1716
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->r:[I

    invoke-direct {p0, v1}, Landroid/support/v7/widget/GridLayout$d;->d([I)V

    .line 1717
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/widget/GridLayout$d;->s:Z

    .line 1719
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->r:[I

    return-object v1
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1766
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$d;->z:I

    .line 1768
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->f:Landroid/support/v7/widget/GridLayout$i;

    .line 1769
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->h:Landroid/support/v7/widget/GridLayout$i;

    .line 1770
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->j:Landroid/support/v7/widget/GridLayout$i;

    .line 1772
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->l:[I

    .line 1773
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->n:[I

    .line 1774
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->p:[Landroid/support/v7/widget/GridLayout$b;

    .line 1776
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->r:[I

    .line 1778
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout$d;->v:[I

    .line 1779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->u:Z

    .line 1781
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$d;->j()V

    .line 1782
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1785
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->g:Z

    .line 1786
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->i:Z

    .line 1787
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->k:Z

    .line 1789
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->m:Z

    .line 1790
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->o:Z

    .line 1791
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->q:Z

    .line 1793
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayout$d;->s:Z

    .line 1794
    return-void
.end method
