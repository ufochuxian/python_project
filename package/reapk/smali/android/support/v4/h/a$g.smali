.class final Landroid/support/v4/h/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/h/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Landroid/support/v4/h/a$g;->a:I

    .line 117
    iput v0, p0, Landroid/support/v4/h/a$g;->b:I

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/h/a$g;->c:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/h/a$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/h/a$1;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/support/v4/h/a$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/support/v4/h/a$g;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "scaleMode"    # I

    .prologue
    .line 121
    iput p1, p0, Landroid/support/v4/h/a$g;->a:I

    .line 122
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/h/a$a;)V
    .locals 0
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/h/a$a;

    .prologue
    .line 147
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/h/a$a;)V
    .locals 0
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/h/a$a;

    .prologue
    .line 151
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Landroid/support/v4/h/a$g;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .prologue
    .line 131
    iput p1, p0, Landroid/support/v4/h/a$g;->b:I

    .line 132
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Landroid/support/v4/h/a$g;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 135
    iput p1, p0, Landroid/support/v4/h/a$g;->c:I

    return-void
.end method
