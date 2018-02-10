.class final Landroid/support/v4/app/bo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bq$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/bo;
    .locals 6
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "choices"    # [Ljava/lang/CharSequence;
    .param p4, "allowFreeFormInput"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 277
    new-instance v0, Landroid/support/v4/app/bo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/bo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/app/bo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 282
    new-array v0, p1, [Landroid/support/v4/app/bo;

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/bq$a;
    .locals 1

    .prologue
    .line 272
    invoke-virtual/range {p0 .. p5}, Landroid/support/v4/app/bo$1;->a(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/bo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)[Landroid/support/v4/app/bq$a;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/support/v4/app/bo$1;->a(I)[Landroid/support/v4/app/bo;

    move-result-object v0

    return-object v0
.end method
