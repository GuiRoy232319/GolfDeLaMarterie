//
//  SignatureView.swift
//  GolfDeLaMarterie
//
//  Created by guill roy on 26/04/2024.
//

import SwiftUI
import PencilKit

//----------------------------------------
//MARK: Signature ViewModel (Deploy in v2)
//----------------------------------------
struct SignatureView: View {
    @State private var playerCanvas = PKCanvasView()
    @State private var scoredCanvas = PKCanvasView()
    @State private var isDrawing = true
    @State private var color = Color.black
    @State private var pencilType : PKInkingTool.InkType = .pen
    @State private var colorPicker = false
    @Environment(\.dismiss) private var dismiss
    @Environment(\.undoManager) private var undoManager
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Marqueur")
                    .fontDesign(.monospaced)
                    .fontWeight(.bold)
                    .font(.title)
                Divider()
                DrawingView(canvas: $scoredCanvas, isDrawing: $isDrawing, pencilType: $pencilType, color: $color)
            }
            VStack{
                Text("Joueur")
                    .fontDesign(.monospaced)
                    .fontWeight(.bold)
                    .font(.title)
                Divider()
                DrawingView(canvas: $playerCanvas, isDrawing: $isDrawing, pencilType: $pencilType, color: $color)
                    .toolbar {
                        ToolbarItemGroup(placement: .topBarTrailing) {
                            Button {
                                // Undo drawing
                                undoManager?.undo()
                            } label: {
                                Image(systemName: "arrow.uturn.backward")
                            }
                            
                            Button {
                                // Redo drawing
                                undoManager?.redo()
                            } label: {
                                Image(systemName: "arrow.uturn.forward")
                            }
                            
                            Button {
                                // Erase tool
                                isDrawing = false
                            } label: {
                                Image(systemName: "eraser.line.dashed")
                            }
                            // Menu for pencil types and color
                            Menu {
                                Button {
                                    // Menu: Pick a color
                                    colorPicker.toggle()
                                } label: {
                                    Label("Color", systemImage: "paintpalette")
                                }
                                
                                Button {
                                    // Menu: Pencil
                                    isDrawing = true
                                    pencilType = .pencil
                                } label: {
                                    Label("Pencil", systemImage: "pencil")
                                }
                                
                                Button {
                                    // Menu: pen
                                    isDrawing = true
                                    pencilType = .pen
                                } label: {
                                    Label("Pen", systemImage: "pencil.tip")
                                }
                                
                                Button {
                                    // Menu: Marker
                                    isDrawing = true
                                    pencilType = .marker
                                } label: {
                                    Label("Marker", systemImage: "paintbrush.pointed")
                                }
                                
                                Button {
                                    // Menu: Monoline
                                    isDrawing = true
                                    pencilType = .monoline
                                } label: {
                                    Label("Monoline", systemImage: "pencil.line")
                                }
                                
                                Button {
                                    // Menu: pen
                                    isDrawing = true
                                    pencilType = .fountainPen
                                } label: {
                                    Label("Fountain", systemImage: "paintbrush.pointed.fill")
                                }
                                
                                Button {
                                    // Menu: Watercolor
                                    isDrawing = true
                                    pencilType = .watercolor
                                } label: {
                                    Label("Watercolor", systemImage: "eyedropper.halffull")
                                }
                                
                                Button {
                                    // Menu: Crayon
                                    isDrawing = true
                                    pencilType = .crayon
                                } label: {
                                    Label("Crayon", systemImage: "pencil.tip")
                                }
                                
                            } label: {
                                Image(systemName: "hand.draw")
                            }
                            .sheet(isPresented: $colorPicker) {
                                ColorPicker("Pick color", selection: $color)
                                    .padding()
                            }
                            
                            Divider()
                                .rotationEffect(.degrees(90))
                            Button {
                                
                            } label: {
                                Label("OK", systemImage: "checkmark.rectangle.fill")
                            }
                            
                        }
                    }
                    .navigationTitle("Signature")
                
            }
        }
    }
    
    struct DrawingView: UIViewRepresentable {
        // Capture drawings for saving in the photos library
        @Binding var canvas: PKCanvasView
        @Binding var isDrawing: Bool
        // Ability to switch a pencil
        @Binding var pencilType: PKInkingTool.InkType
        // Ability to change a pencil color
        @Binding var color: Color
        
        //let ink = PKInkingTool(.pencil, color: .black)
        // Update ink type
        var ink: PKInkingTool {
            PKInkingTool(pencilType, color: UIColor(color))
        }
        
        let eraser = PKEraserTool(.bitmap)
        
        func makeUIView(context: Context) -> PKCanvasView {
            // Allow finger and pencil drawing
            canvas.drawingPolicy = .anyInput
            // Eraser tool
            canvas.tool = isDrawing ? ink : eraser
            canvas.alwaysBounceVertical = true
            //Background Canvas
            canvas.backgroundColor = .systemGray5
            
            // Toolpicker
            let toolPicker = PKToolPicker.init()
            toolPicker.setVisible(true, forFirstResponder: canvas)
            //        toolPicker.addObserver(canvas) // Notify when the picker configuration changes
            canvas.becomeFirstResponder()
            
            return canvas
        }
        func saveDrawing() {
            // Get the drawing image from the canvas
            let drawingImage = canvas.drawing.image(from: canvas.drawing.bounds, scale: 1.0)
            
            // Save drawings to the Photos Album
            UIImageWriteToSavedPhotosAlbum(drawingImage, nil, nil, nil)
        }
        
        func updateUIView(_ uiView: PKCanvasView, context: Context) {
            // Update tool whenever the main view updates
            uiView.tool = isDrawing ? ink : eraser
        }
    }
}
#Preview {
    SignatureView()
}
