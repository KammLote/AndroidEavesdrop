.class final Lcom/google/android/gms/internal/zzbiu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaKU:Lcom/google/android/gms/awareness/fence/zza;

.field private final zzaKV:Lcom/google/android/gms/internal/zzbjc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/awareness/fence/zza;Lcom/google/android/gms/internal/zzbjc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/awareness/fence/zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->zzaKU:Lcom/google/android/gms/awareness/fence/zza;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbjc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbiu;->zzaKV:Lcom/google/android/gms/internal/zzbjc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    return-void
.end method
