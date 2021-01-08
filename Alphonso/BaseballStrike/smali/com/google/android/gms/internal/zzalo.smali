.class public final Lcom/google/android/gms/internal/zzalo;
.super Lcom/google/android/gms/analytics/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzalo;",
        ">;"
    }
.end annotation


# instance fields
.field public zzNY:I

.field public zzNZ:I

.field private zzaeT:Ljava/lang/String;

.field public zzaeU:I

.field public zzaeV:I

.field public zzaeW:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeT:Ljava/lang/String;

    return-object v0
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzalo;->zzaeT:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzalo;->zzaeT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzalo;->zzaeU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzalo;->zzNY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzalo;->zzNZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzalo;->zzaeV:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzalo;->zzaeW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzalo;->zzh(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Lcom/google/android/gms/analytics/zzj;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/zzalo;

    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeU:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeU:I

    iput v0, p1, Lcom/google/android/gms/internal/zzalo;->zzaeU:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzNY:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzNY:I

    iput v0, p1, Lcom/google/android/gms/internal/zzalo;->zzNY:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzNZ:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzNZ:I

    iput v0, p1, Lcom/google/android/gms/internal/zzalo;->zzNZ:I

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeV:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeV:I

    iput v0, p1, Lcom/google/android/gms/internal/zzalo;->zzaeV:I

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeW:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeW:I

    iput v0, p1, Lcom/google/android/gms/internal/zzalo;->zzaeW:I

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzalo;->zzaeT:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/zzalo;->zzaeT:Ljava/lang/String;

    :cond_5
    return-void
.end method
