.class public final Landroid/support/v4/app/ay$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ay$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ay$f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CarExtender"

.field private static final b:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final c:Ljava/lang/String; = "large_icon"

.field private static final d:Ljava/lang/String; = "car_conversation"

.field private static final e:Ljava/lang/String; = "app_color"


# instance fields
.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/support/v4/app/ay$f$a;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3766
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/ay$f;->h:I

    .line 3772
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 5
    .param p1, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    .line 3779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3766
    iput v4, p0, Landroid/support/v4/app/ay$f;->h:I

    .line 3780
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 3794
    :cond_0
    :goto_0
    return-void

    .line 3784
    :cond_1
    invoke-static {p1}, Landroid/support/v4/app/ay;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 3786
    .local v1, "carBundle":Landroid/os/Bundle;
    :goto_1
    if-eqz v1, :cond_0

    .line 3787
    const-string v2, "large_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/support/v4/app/ay$f;->f:Landroid/graphics/Bitmap;

    .line 3788
    const-string v2, "app_color"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/app/ay$f;->h:I

    .line 3790
    const-string v2, "car_conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3791
    .local v0, "b":Landroid/os/Bundle;
    sget-object v2, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    sget-object v3, Landroid/support/v4/app/ay$f$a;->a:Landroid/support/v4/app/bd$b$a;

    sget-object v4, Landroid/support/v4/app/bo;->c:Landroid/support/v4/app/bq$a$a;

    invoke-interface {v2, v0, v3, v4}, Landroid/support/v4/app/ay$j;->a(Landroid/os/Bundle;Landroid/support/v4/app/bd$b$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$b;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ay$f$a;

    iput-object v2, p0, Landroid/support/v4/app/ay$f;->g:Landroid/support/v4/app/ay$f$a;

    goto :goto_0

    .line 3785
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "carBundle":Landroid/os/Bundle;
    :cond_2
    invoke-static {p1}, Landroid/support/v4/app/ay;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation build Landroid/support/annotation/k;
    .end annotation

    .prologue
    .line 3845
    iget v0, p0, Landroid/support/v4/app/ay$f;->h:I

    return v0
.end method

.method public a(Landroid/support/v4/app/ay$d;)Landroid/support/v4/app/ay$d;
    .locals 4
    .param p1, "builder"    # Landroid/support/v4/app/ay$d;

    .prologue
    .line 3803
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 3822
    :goto_0
    return-object p1

    .line 3807
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3809
    .local v1, "carExtensions":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/v4/app/ay$f;->f:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 3810
    const-string v2, "large_icon"

    iget-object v3, p0, Landroid/support/v4/app/ay$f;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3812
    :cond_1
    iget v2, p0, Landroid/support/v4/app/ay$f;->h:I

    if-eqz v2, :cond_2

    .line 3813
    const-string v2, "app_color"

    iget v3, p0, Landroid/support/v4/app/ay$f;->h:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3816
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/ay$f;->g:Landroid/support/v4/app/ay$f$a;

    if-eqz v2, :cond_3

    .line 3817
    sget-object v2, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    iget-object v3, p0, Landroid/support/v4/app/ay$f;->g:Landroid/support/v4/app/ay$f$a;

    invoke-interface {v2, v3}, Landroid/support/v4/app/ay$j;->a(Landroid/support/v4/app/bd$b;)Landroid/os/Bundle;

    move-result-object v0

    .line 3818
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "car_conversation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3821
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/ay$d;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public a(I)Landroid/support/v4/app/ay$f;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/k;
        .end annotation
    .end param

    .prologue
    .line 3834
    iput p1, p0, Landroid/support/v4/app/ay$f;->h:I

    .line 3835
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay$f;
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3858
    iput-object p1, p0, Landroid/support/v4/app/ay$f;->f:Landroid/graphics/Bitmap;

    .line 3859
    return-object p0
.end method

.method public a(Landroid/support/v4/app/ay$f$a;)Landroid/support/v4/app/ay$f;
    .locals 0
    .param p1, "unreadConversation"    # Landroid/support/v4/app/ay$f$a;

    .prologue
    .line 3879
    iput-object p1, p0, Landroid/support/v4/app/ay$f;->g:Landroid/support/v4/app/ay$f$a;

    .line 3880
    return-object p0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3869
    iget-object v0, p0, Landroid/support/v4/app/ay$f;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Landroid/support/v4/app/ay$f$a;
    .locals 1

    .prologue
    .line 3888
    iget-object v0, p0, Landroid/support/v4/app/ay$f;->g:Landroid/support/v4/app/ay$f$a;

    return-object v0
.end method