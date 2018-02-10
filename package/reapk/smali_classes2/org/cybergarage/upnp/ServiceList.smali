.class public Lorg/cybergarage/upnp/ServiceList;
.super Ljava/util/Vector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lorg/cybergarage/upnp/Service;",
        ">;"
    }
.end annotation


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "serviceList"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getService(I)Lorg/cybergarage/upnp/Service;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ServiceList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
