.class public Lcom/jiliguala/niuwa/common/a/f;
.super Lcom/jiliguala/niuwa/common/a/a;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/jiliguala/niuwa/common/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/a/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/a/a;-><init>()V

    return-void
.end method

.method public static b(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/f;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 16
    sget-object v1, Lcom/jiliguala/niuwa/common/a/f;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/a/f;

    .line 17
    .local v0, "fragment":Lcom/jiliguala/niuwa/common/a/f;
    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/jiliguala/niuwa/common/a/f;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/f;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/a/f;-><init>()V

    .line 20
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/common/a/f;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ag;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v0

    .line 27
    .local v0, "ft":Landroid/support/v4/app/an;
    iget-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/f;->d:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/a/f;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    sget-object v1, Lcom/jiliguala/niuwa/common/a/f;->f:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/an;

    .line 29
    invoke-virtual {v0}, Landroid/support/v4/app/an;->i()I

    .line 30
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jiliguala/niuwa/common/a/f;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "ft":Landroid/support/v4/app/an;
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0f004e

    return v0
.end method
