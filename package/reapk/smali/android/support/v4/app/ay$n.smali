.class Landroid/support/v4/app/ay$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ay$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ay$d;Landroid/support/v4/app/ay$e;)Landroid/app/Notification;
    .locals 6
    .param p1, "b"    # Landroid/support/v4/app/ay$d;
    .param p2, "extender"    # Landroid/support/v4/app/ay$e;

    .prologue
    .line 539
    iget-object v0, p1, Landroid/support/v4/app/ay$d;->F:Landroid/app/Notification;

    .line 540
    .local v0, "result":Landroid/app/Notification;
    iget-object v1, p1, Landroid/support/v4/app/ay$d;->a:Landroid/content/Context;

    .line 541
    invoke-virtual {p1}, Landroid/support/v4/app/ay$d;->l()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/ay$d;->k()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v4/app/ay$d;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/app/ay$d;->e:Landroid/app/PendingIntent;

    .line 540
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/bd;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 543
    iget v1, p1, Landroid/support/v4/app/ay$d;->j:I

    if-lez v1, :cond_0

    .line 544
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 546
    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/ay$d;->C:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 547
    iget-object v1, p1, Landroid/support/v4/app/ay$d;->C:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 549
    :cond_1
    return-object v0
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 554
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/bd$b;)Landroid/os/Bundle;
    .locals 1
    .param p1, "uc"    # Landroid/support/v4/app/bd$b;

    .prologue
    .line 605
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/app/Notification;I)Landroid/support/v4/app/ay$a;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "actionIndex"    # I

    .prologue
    .line 564
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;Landroid/support/v4/app/bd$b$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$b;
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "factory"    # Landroid/support/v4/app/bd$b$a;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    .line 612
    const/4 v0, 0x0

    return-object v0
.end method

.method public a([Landroid/support/v4/app/ay$a;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "actions"    # [Landroid/support/v4/app/ay$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/ay$a;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)[Landroid/support/v4/app/ay$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)[",
            "Landroid/support/v4/app/ay$a;"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/app/Notification;)I
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 559
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 590
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/app/Notification;)Z
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method
