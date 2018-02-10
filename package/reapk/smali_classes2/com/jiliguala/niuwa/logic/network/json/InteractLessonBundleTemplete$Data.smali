.class public Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Data;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xdb13352906ccc19L


# instance fields
.field public _id:Ljava/lang/String;

.field public banner:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public detail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/InteractLessonBundleTemplete$Detail;",
            ">;"
        }
    .end annotation
.end field

.field public discount:Ljava/lang/String;

.field public hascount:Ljava/lang/String;

.field public hint:Ljava/lang/String;

.field public itemid:Ljava/lang/String;

.field public oritotalprice:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public totalcount:Ljava/lang/String;

.field public totalprice:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
