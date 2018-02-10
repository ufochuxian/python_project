.class public Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
.super Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItemBase;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;,
        Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4829fca17a2dd27L


# instance fields
.field public X:F

.field public Y:F

.field public absPos:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

.field public attachedViewId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field public borderColor:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "border_color"
    .end annotation
.end field

.field public curTar:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field public draggable:Z

.field public height:F

.field public id:Ljava/lang/String;

.field public itemThumb:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumb"
    .end annotation
.end field

.field public size:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Point;

.field public sound:Ljava/lang/String;

.field public targetMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItemBase;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->targetMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBorderColorNormal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->borderColor:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->borderColor:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;->normal:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBorderColorSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->borderColor:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->borderColor:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;->selected:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemThumbNormal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->itemThumb:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->itemThumb:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;->normal:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemThumbSelected()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->itemThumb:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem;->itemThumb:Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/InteractWidgetItem$Appearance;->selected:Ljava/lang/String;

    goto :goto_0
.end method
