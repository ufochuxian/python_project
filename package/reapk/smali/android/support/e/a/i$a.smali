.class Landroid/support/e/a/i$a;
.super Landroid/support/e/a/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/e/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1622
    invoke-direct {p0}, Landroid/support/e/a/i$d;-><init>()V

    .line 1624
    return-void
.end method

.method public constructor <init>(Landroid/support/e/a/i$a;)V
    .locals 0
    .param p1, "copy"    # Landroid/support/e/a/i$a;

    .prologue
    .line 1627
    invoke-direct {p0, p1}, Landroid/support/e/a/i$d;-><init>(Landroid/support/e/a/i$d;)V

    .line 1628
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1646
    const/4 v2, 0x0

    .line 1647
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1648
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1649
    iput-object v1, p0, Landroid/support/e/a/i$a;->n:Ljava/lang/String;

    .line 1652
    :cond_0
    const/4 v2, 0x1

    .line 1653
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1654
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1655
    invoke-static {v0}, Landroid/support/e/a/e;->b(Ljava/lang/String;)[Landroid/support/e/a/e$b;

    move-result-object v2

    iput-object v2, p0, Landroid/support/e/a/i$a;->m:[Landroid/support/e/a/e$b;

    .line 1657
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 1632
    const-string v2, "pathData"

    invoke-static {p4, v2}, Landroid/support/e/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    .line 1633
    .local v1, "hasPathData":Z
    if-nez v1, :cond_0

    .line 1640
    :goto_0
    return-void

    .line 1636
    :cond_0
    sget-object v2, Landroid/support/e/a/a;->H:[I

    invoke-static {p1, p3, p2, v2}, Landroid/support/e/a/h;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1638
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/support/e/a/i$a;->a(Landroid/content/res/TypedArray;)V

    .line 1639
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 1661
    const/4 v0, 0x1

    return v0
.end method