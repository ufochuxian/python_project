.class Landroid/support/v4/media/a$d;
.super Landroid/support/v4/os/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/support/v4/media/a$c;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/media/a$c;Landroid/os/Handler;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/support/v4/media/a$c;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1957
    invoke-direct {p0, p3}, Landroid/support/v4/os/m;-><init>(Landroid/os/Handler;)V

    .line 1958
    iput-object p1, p0, Landroid/support/v4/media/a$d;->d:Ljava/lang/String;

    .line 1959
    iput-object p2, p0, Landroid/support/v4/media/a$d;->e:Landroid/support/v4/media/a$c;

    .line 1960
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 1964
    if-eqz p2, :cond_0

    .line 1965
    const-class v1, Landroid/support/v4/media/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1967
    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const-string v1, "media_item"

    .line 1968
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1969
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/a$d;->e:Landroid/support/v4/media/a$c;

    iget-object v2, p0, Landroid/support/v4/media/a$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/a$c;->a(Ljava/lang/String;)V

    .line 1978
    :goto_0
    return-void

    .line 1972
    :cond_2
    const-string v1, "media_item"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1973
    .local v0, "item":Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/support/v4/media/a$k;

    if-eqz v1, :cond_4

    .line 1974
    :cond_3
    iget-object v1, p0, Landroid/support/v4/media/a$d;->e:Landroid/support/v4/media/a$c;

    check-cast v0, Landroid/support/v4/media/a$k;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Landroid/support/v4/media/a$c;->a(Landroid/support/v4/media/a$k;)V

    goto :goto_0

    .line 1976
    .restart local v0    # "item":Landroid/os/Parcelable;
    :cond_4
    iget-object v1, p0, Landroid/support/v4/media/a$d;->e:Landroid/support/v4/media/a$c;

    iget-object v2, p0, Landroid/support/v4/media/a$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/a$c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
