.class public Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$AllChannelData;,
        Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Treasure;,
        Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$Subscribe;,
        Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1ca432f76f271188L


# instance fields
.field public code:I

.field public data:Lcom/jiliguala/niuwa/logic/network/json/GlobeTemplate$DataPart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
