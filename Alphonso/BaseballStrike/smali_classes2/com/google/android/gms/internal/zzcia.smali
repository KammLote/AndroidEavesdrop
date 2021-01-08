.class final Lcom/google/android/gms/internal/zzcia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbtQ:Lcom/google/android/gms/internal/zzchy;

.field private synthetic zzbtR:Lcom/google/android/gms/internal/zzcib;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzchy;Lcom/google/android/gms/internal/zzcib;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcia;->zzbtR:Lcom/google/android/gms/internal/zzcib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcia;->zzbtR:Lcom/google/android/gms/internal/zzcib;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzchy;->zza(Lcom/google/android/gms/internal/zzchy;Lcom/google/android/gms/internal/zzcib;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchy;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzchy;->zzbtE:Lcom/google/android/gms/internal/zzcib;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcia;->zzbtQ:Lcom/google/android/gms/internal/zzchy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchy;->zzww()Lcom/google/android/gms/internal/zzcic;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcic;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V

    return-void
.end method
