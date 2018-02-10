.class public Lorg/cybergarage/upnp/IconList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/upnp/Icon;",
        ">;"
    }
.end annotation


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "iconList"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getIcon(I)Lorg/cybergarage/upnp/Icon;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 45
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/IconList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Icon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v1, 0x0

    goto :goto_0
.end method
