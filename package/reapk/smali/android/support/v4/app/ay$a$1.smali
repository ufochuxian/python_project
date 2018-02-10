.class final Landroid/support/v4/app/ay$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bd$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/bq$a;Z)Landroid/support/v4/app/bd$a;
    .locals 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "actionIntent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/support/v4/app/bq$a;
    .param p6, "allowGeneratedReplies"    # Z

    .prologue
    .line 2887
    new-instance v0, Landroid/support/v4/app/ay$a;

    check-cast p5, [Landroid/support/v4/app/bo;

    .end local p5    # "remoteInputs":[Landroid/support/v4/app/bq$a;
    move-object v5, p5

    check-cast v5, [Landroid/support/v4/app/bo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ay$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/bo;Z)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/app/ay$a;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 2893
    new-array v0, p1, [Landroid/support/v4/app/ay$a;

    return-object v0
.end method

.method public synthetic b(I)[Landroid/support/v4/app/bd$a;
    .locals 1

    .prologue
    .line 2881
    invoke-virtual {p0, p1}, Landroid/support/v4/app/ay$a$1;->a(I)[Landroid/support/v4/app/ay$a;

    move-result-object v0

    return-object v0
.end method
