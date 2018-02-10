.class public Landroid/support/v4/app/ay$b;
.super Landroid/support/v4/app/ay$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1919
    invoke-direct {p0}, Landroid/support/v4/app/ay$t;-><init>()V

    .line 1920
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ay$d;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/ay$d;

    .prologue
    .line 1922
    invoke-direct {p0}, Landroid/support/v4/app/ay$t;-><init>()V

    .line 1923
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ay$b;->a(Landroid/support/v4/app/ay$d;)V

    .line 1924
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay$b;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1948
    iput-object p1, p0, Landroid/support/v4/app/ay$b;->a:Landroid/graphics/Bitmap;

    .line 1949
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay$b;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1931
    invoke-static {p1}, Landroid/support/v4/app/ay$d;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ay$b;->f:Ljava/lang/CharSequence;

    .line 1932
    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay$b;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1956
    iput-object p1, p0, Landroid/support/v4/app/ay$b;->b:Landroid/graphics/Bitmap;

    .line 1957
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ay$b;->c:Z

    .line 1958
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ay$b;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1939
    invoke-static {p1}, Landroid/support/v4/app/ay$d;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ay$b;->g:Ljava/lang/CharSequence;

    .line 1940
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ay$b;->h:Z

    .line 1941
    return-object p0
.end method
